import 'package:flutter/material.dart';

ThemeData get dragonBallZTheme {
  const dragonBallOrange = Color(0xFFFF7F00); // Goku's gi orange
  const dragonBallBlue = Color(0xFF1E88E5); // Classic DBZ blue
  const energyYellow = Color(0xFFFFD700); // Super Saiyan energy
  const saiyanGold = Color(0xFFFFA500); // Super Saiyan hair

  final colorScheme = ColorScheme.fromSeed(
    seedColor: dragonBallOrange,
    primary: dragonBallOrange,
    secondary: dragonBallBlue,
    tertiary: energyYellow,
    surface: const Color(0xFFFFFBF3), // Warm white
    onSurface: const Color(0xFF2D2D2D),
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    fontFamily: 'Roboto',

    // App Bar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: dragonBallOrange,
      foregroundColor: Colors.white,
      elevation: 4,
      shadowColor: Colors.black26,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 0.5,
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      color: Colors.white,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: dragonBallOrange,
        foregroundColor: Colors.white,
        elevation: 6,
        shadowColor: dragonBallOrange.withAlpha(102),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: saiyanGold,
      foregroundColor: Colors.black87,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // List Tile Theme
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Colors.white,
      selectedTileColor: dragonBallOrange.withAlpha(25),
    ),

    // Progress Indicator Theme
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: dragonBallOrange,
      linearTrackColor: Color(0xFFFFE0B3),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2D2D2D),
        letterSpacing: 0.5,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2D2D2D),
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2D2D2D),
      ),
      bodyLarge: TextStyle(fontSize: 16, color: Color(0xFF424242)),
      bodyMedium: TextStyle(fontSize: 14, color: Color(0xFF616161)),
    ),
  );
}

ThemeData get dragonBallZDarkTheme {
  const dragonBallOrange = Color(0xFFFF7F00);
  const dragonBallBlue = Color(0xFF1E88E5);
  const energyYellow = Color(0xFFFFD700);
  const darkSurface = Color(0xFF1A1A1A);
  const darkerSurface = Color(0xFF0D0D0D);

  final colorScheme = ColorScheme.fromSeed(
    seedColor: dragonBallOrange,
    brightness: Brightness.dark,
    primary: dragonBallOrange,
    secondary: dragonBallBlue,
    tertiary: energyYellow,
    surface: darkSurface,
    onSurface: Colors.white,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    fontFamily: 'Roboto',

    // App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: darkerSurface,
      foregroundColor: dragonBallOrange,
      elevation: 4,
      shadowColor: dragonBallOrange.withAlpha(75),
      titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: dragonBallOrange,
        letterSpacing: 0.5,
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      elevation: 0,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade800),
      ),
      color: darkSurface,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: dragonBallOrange,
        foregroundColor: Colors.black,
        elevation: 6,
        shadowColor: dragonBallOrange.withAlpha(100),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),

    // List Tile Theme
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: darkSurface,
      selectedTileColor: dragonBallOrange.withAlpha(50),
    ),

    // Progress Indicator Theme
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: dragonBallOrange,
      linearTrackColor: Color(0xFF333333),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 0.5,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: Color(0xFFE0E0E0)),
      bodyMedium: TextStyle(fontSize: 14, color: Color(0xFFBDBDBD)),
    ),
  );
}
