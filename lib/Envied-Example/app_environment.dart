import 'package:all_my_examples/Envied-Example/app_configurations.dart';
import 'package:all_my_examples/Envied-Example/dev_env.dart';
import 'package:flutter/foundation.dart';

final class AppEnvironment {
  /// initalize
  AppEnvironment.setup() {
    //! Fix that
    _config = kDebugMode ? DevEnv() : DevEnv();
  }

  static late final AppConfigurations _config;
}

/// Bunu UI'da kullanacağız
enum AppEnvironmentKeys {
  baseUrl,
  apiKey;

  String get value {
    switch (this) {
      case AppEnvironmentKeys.baseUrl:
        return AppEnvironment._config.baseUrl;
      case AppEnvironmentKeys.apiKey:
        return AppEnvironment._config.apiKey;
      default:
        throw ArgumentError('Invalid AppEnvironmentKeys value: $this');
    }
  }
}
