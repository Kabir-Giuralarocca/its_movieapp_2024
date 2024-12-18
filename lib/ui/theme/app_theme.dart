import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/theme/app_buttons.dart';
import 'package:its_movieapp_2024/ui/theme/app_colors.dart';
import 'package:its_movieapp_2024/ui/theme/app_text_styles.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.base,
    primaryColor: AppColor.accent,
    hoverColor: AppColor.black25,
    colorScheme: _colorScheme,
    textTheme: _textTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    iconTheme: _iconTheme,
    inputDecorationTheme: _inputDecorationTheme,
    textSelectionTheme: _textSelectionTheme,
    floatingActionButtonTheme: _floatingActionButtonTheme,
    progressIndicatorTheme: _progressIndicatorTheme,
    snackBarTheme: snackBarTheme,
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

  static const TextTheme _textTheme = TextTheme(
    bodyMedium: AppTextStyle.regular14,
  );

  static final ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
    style: AppButton.accent,
  );

  static final IconThemeData _iconTheme = IconThemeData(
    color: AppColor.white,
    fill: 0,
    weight: 300,
    size: 24,
    opticalSize: 24,
  );

  static final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    hintStyle: AppTextStyle.regular12Tertiary,
    suffixIconColor: AppColor.tertiary,
    border: InputBorder.none,
    isDense: true,
    constraints: BoxConstraints(minHeight: 24),
    errorStyle: AppTextStyle.regular12Error,
    errorMaxLines: 5,
  );

  static final TextSelectionThemeData _textSelectionTheme = TextSelectionThemeData(
    cursorColor: AppColor.grey,
    selectionColor: AppColor.white25,
    selectionHandleColor: AppColor.tertiary,
  );

  static final FloatingActionButtonThemeData _floatingActionButtonTheme = FloatingActionButtonThemeData(
    foregroundColor: AppColor.black,
    backgroundColor: AppColor.white,
    iconSize: 40,
    hoverColor: AppColor.black25,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    sizeConstraints: BoxConstraints.tight(Size(48, 48)),
  );

  static const ProgressIndicatorThemeData _progressIndicatorTheme = ProgressIndicatorThemeData(
    color: AppColor.accent,
    circularTrackColor: AppColor.primary,
    linearTrackColor: AppColor.primary,
  );

  static const SnackBarThemeData snackBarTheme = SnackBarThemeData(
    contentTextStyle: AppTextStyle.regular14White,
  );
}
