import 'package:flutter/material.dart';

/// Quản lý màu sắc
class AppColors {
  static const Color primary = Color(0xFF2c6e49);
  static const Color secondary = Color(0xFF2C6E49);
  static const Color background = Colors.white;
  static const Color backgroundDark = Color(0xFF000000);
  static const Color unselected = Color(0xFFffc9b9);
  static const Color text = Color(0xFF212121);
  static const Color error = Color(0xFFD32F2F);
  // static const Color shadow = Color(0xFFF5F5F5);
  static const Color shadow = Color(0xFF000000);
  // Donet color
  static const Color buyCoffeeButton = Color(0xFFffdd00);
  static const Color momoButton = Color(0xFFa50064);
  static const Color paypalButton = Color(0xFF0e319f);
}

/// Quản lý kiểu chữ
class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    color: AppColors.text,
  );

  static const TextStyle defaultText = TextStyle(
    fontSize: 14,
    color: AppColors.text,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle headlineTextDark = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle bodyLargeTextDark = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  static const TextStyle defaultTextDark = TextStyle(
    fontSize: 14,
    color: Colors.white,
  );
}

class AppShadow {
  static const BoxShadow shadow = BoxShadow(
    color: Color.fromARGB(68, 0, 0, 0),
    blurRadius: 10,
    offset: Offset(0, 4),
  );
}

class AppBarTheme {
  static AppBarTheme lightAppBar = AppBarTheme();

  static AppBarTheme darkAppBar = AppBarTheme();
}

/// Quản lý theme chính
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    textTheme: const TextTheme(
      headlineLarge: AppTextStyles.headline,
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.defaultText,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    splashFactory: NoSplash.splashFactory,
    hintColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: const TextTheme(
      headlineLarge: AppTextStyles.headlineTextDark,
      bodyLarge: AppTextStyles.bodyLargeTextDark,
      bodyMedium: AppTextStyles.defaultTextDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    splashFactory: NoSplash.splashFactory,
    hintColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
