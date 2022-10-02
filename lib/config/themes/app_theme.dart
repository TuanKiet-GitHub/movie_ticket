import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_text_style.dart';

class AppTheme {
  static final AppTextStyle _textStyle = AppTextStyle.instance;

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    backgroundColor: AppColor.backgroundWhite,
    scaffoldBackgroundColor: AppColor.backgroundWhite,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge,
      displayMedium: _textStyle.displayMedium,
      displaySmall: _textStyle.displaySmall,
      headlineLarge: _textStyle.headlineLarge,
      headlineMedium: _textStyle.headlineMedium,
      headlineSmall: _textStyle.headlineSmall,
      titleLarge: _textStyle.titleLarge,
      titleSmall: _textStyle.titleSmall,
      titleMedium: _textStyle.titleMedium,
      labelLarge: _textStyle.labelLarge,
      labelMedium: _textStyle.labelMedium,
      labelSmall: _textStyle.labelSmall,
      bodyLarge: _textStyle.bodyLarge,
      bodyMedium: _textStyle.bodyMedium,
      bodySmall: _textStyle.bodySmall,
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: AppColor.backgroundBlack,
    scaffoldBackgroundColor: AppColor.backgroundBlack,
    primaryColor: AppColor.primaryColor,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge.copyWith(color: DarkTheme.text),
      displayMedium: _textStyle.displayMedium.copyWith(color: DarkTheme.text),
      displaySmall: _textStyle.displaySmall.copyWith(color: DarkTheme.text),
      headlineLarge: _textStyle.headlineLarge.copyWith(color: DarkTheme.text),
      headlineMedium: _textStyle.headlineMedium.copyWith(color: DarkTheme.text),
      headlineSmall: _textStyle.headlineSmall.copyWith(color: DarkTheme.text),
      titleLarge: _textStyle.titleLarge.copyWith(color: DarkTheme.text),
      titleSmall: _textStyle.titleSmall.copyWith(color: DarkTheme.text),
      titleMedium: _textStyle.titleMedium.copyWith(color: DarkTheme.text),
      labelLarge: _textStyle.labelLarge.copyWith(color: DarkTheme.text),
      labelMedium: _textStyle.labelMedium.copyWith(color: DarkTheme.text),
      labelSmall: _textStyle.labelSmall.copyWith(color: DarkTheme.text),
      bodyLarge: _textStyle.bodyLarge.copyWith(color: DarkTheme.text),
      bodyMedium: _textStyle.bodyMedium.copyWith(color: DarkTheme.text),
      bodySmall: _textStyle.bodySmall.copyWith(color: DarkTheme.text),
    ),
  );
}
