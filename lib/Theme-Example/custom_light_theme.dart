import 'package:all_my_examples/Theme-Example/base_custom_theme.dart';
import 'package:all_my_examples/Theme-Example/custom_theme_scheme.dart';
import 'package:flutter/material.dart';

final class CustomLightTheme implements CustomTheme {
  @override
  FloatingActionButtonThemeData get fabThemeData => throw UnimplementedError();

  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: fabThemeData,
        colorScheme: CustomMaterialTheme.lightScheme(),
      );
}
