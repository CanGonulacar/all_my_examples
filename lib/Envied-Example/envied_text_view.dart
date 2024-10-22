import 'package:flutter/material.dart';

import 'index.dart';

class TestEnviedView extends StatelessWidget {
  const TestEnviedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(AppEnvironmentKeys.apiKey.value),
    );
  }
}
