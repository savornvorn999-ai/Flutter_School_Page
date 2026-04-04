import 'package:flutter/material.dart';

class AppColors {
  static const Color pageBackground = Color(0xFFF5DDF2);
  static const Color primaryBlue = Color(0xFF2E57A4);
  static const Color primaryBlueDark = Color(0xFF23478A);
  static const Color textPrimary = Color(0xFF2A2529);
  static const Color textMuted = Color(0xFF88798A);
  static const Color inputIcon = Color(0xFF908291);
  static const Color facebookBlue = Color(0xFF1D4EA5);
  static const Color googleRed = Color(0xFFE24A3B);
}

ThemeData buildAppTheme() {
  final ThemeData baseTheme = ThemeData(useMaterial3: true);

  return baseTheme.copyWith(
    scaffoldBackgroundColor: AppColors.pageBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryBlue,
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColors.primaryBlue,
      secondary: AppColors.primaryBlueDark,
      surface: Colors.white,
    ),
    textTheme: baseTheme.textTheme.apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: const TextStyle(
        color: AppColors.textMuted,
        fontSize: 14,
      ),
      prefixIconColor: AppColors.inputIcon,
      suffixIconColor: AppColors.primaryBlue,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.primaryBlue,
          width: 1.4,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size.fromHeight(56),
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryBlue,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
      ),
    ),
  );
}
