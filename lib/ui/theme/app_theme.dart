import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/theme/app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.base,
    primaryColor: AppColor.accent,
    hoverColor: AppColor.black25,
    colorScheme: _colorScheme,
  );

  static const ColorScheme _colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColor.primary,
    onPrimary: AppColor.white,
    secondary: AppColor.secondary,
    onSecondary: AppColor.white,
    tertiary: AppColor.tertiary,
    onTertiary: AppColor.white,
    error: AppColor.error,
    onError: AppColor.white,
    surface: AppColor.base,
    onSurface: AppColor.white,
  );
}
