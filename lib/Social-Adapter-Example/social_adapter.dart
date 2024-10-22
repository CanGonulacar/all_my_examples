import 'package:all_my_examples/Social-Adapter-Example/social_adapter_model.dart';

abstract class SocialAdapter {
  /// For Credentials
  Future<String?> make();
  SocialAdapterModel get model;
}
