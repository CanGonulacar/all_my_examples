import 'package:all_my_examples/Navigaton-Example/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      //theme: CustomLightTheme().themeData,
      //darkTheme: CustomDarkTheme().themeData,
      //home: const HomeView(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
