import 'package:all_my_examples/Envied-Example/app_configurations.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(path: 'assets/env/.dev.env', obfuscate: true)
final class DevEnv implements AppConfigurations {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv.baseUrl;
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv.apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
