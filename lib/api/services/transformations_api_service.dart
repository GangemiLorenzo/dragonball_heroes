import 'package:dio/dio.dart';
import 'package:dragonball_heroes/api/models/transformation_dto.dart';

class TransformationsApiService {
  TransformationsApiService(this._dio);

  final Dio _dio;

  Future<TransformationResponse> getTransformations() async {
    final response = await _dio.get<Map<String, dynamic>>('/transformations');
    return TransformationResponseMapper.fromMap(response.data!);
  }

  Future<TransformationDto> getTransformation(int id) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/transformations/$id',
    );
    return TransformationDtoMapper.fromMap(response.data!);
  }
}
