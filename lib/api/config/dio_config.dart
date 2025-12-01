import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

class DioConfig {
  static Dio createDio({required String baseUrl}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: 30000),
        receiveTimeout: const Duration(milliseconds: 30000),
        sendTimeout: const Duration(milliseconds: 30000),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Handle SSL certificate issues
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      return HttpClient()
        ..badCertificateCallback = (cert, host, port) {
          // Log certificate details in debug mode
          if (kDebugMode) {
            debugPrint('SSL Certificate validation failed for $host:$port');
            debugPrint('Certificate subject: ${cert.subject}');
            debugPrint('Certificate issuer: ${cert.issuer}');
          }

          // Allow bad certificates for specific known hosts or in debug mode
          final allowedHosts = ['dragonball-api.com', 'www.dragonball-api.com'];
          final isAllowedHost = allowedHosts.any(
            (allowedHost) => host.contains(allowedHost),
          );

          return kDebugMode || isAllowedHost;
        }
        ..connectionTimeout = const Duration(seconds: 30)
        ..userAgent = 'DragonBallHeroes/1.0.0 (Flutter App)';
    };

    // Add interceptors
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (obj) => debugPrint(obj.toString()),
        ),
      );
    }

    // Add error handling interceptor
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          // Handle common errors here
          if (kDebugMode) {
            debugPrint('API Error: ${error.message}');
            debugPrint('Error Type: ${error.type}');
            debugPrint('Response: ${error.response}');

            // Log additional SSL/certificate error details
            if ((error.message?.contains('CERTIFICATE_VERIFY_FAILED') ??
                    false) ||
                (error.message?.contains('HandshakeException') ?? false)) {
              debugPrint(
                'SSL Certificate Error detected. Check certificate configuration.',
              );
            }
          }

          // Transform some errors into more user-friendly messages
          final transformedError =
              (error.message?.contains('CERTIFICATE_VERIFY_FAILED') ?? false)
              ? DioException(
                  requestOptions: error.requestOptions,
                  error:
                      'SSL Certificate verification failed. Please check your internet connection.',
                  type: DioExceptionType.connectionError,
                )
              : error;

          handler.next(transformedError);
        },
        onRequest: (options, handler) {
          if (kDebugMode) {
            debugPrint('Request: ${options.method} ${options.uri}');
          }
          handler.next(options);
        },
        onResponse: (response, handler) {
          if (kDebugMode) {
            debugPrint(
              'Response: ${response.statusCode} ${response.requestOptions.uri}',
            );
          }
          handler.next(response);
        },
      ),
    );

    return dio;
  }
}
