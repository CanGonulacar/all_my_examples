import 'package:all_my_examples/Theme-Example/base_custom_theme.dart';
import 'package:all_my_examples/Theme-Example/custom_theme_scheme.dart';
import 'package:flutter/material.dart';

final class CustomDarkTheme implements CustomTheme {
  @override
  FloatingActionButtonThemeData get fabThemeData =>
      const FloatingActionButtonThemeData();

  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: fabThemeData,
        colorScheme: CustomMaterialTheme.darkMediumContrastScheme(),
      );
}
