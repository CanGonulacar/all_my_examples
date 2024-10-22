import 'package:all_my_examples/Social-Adapter-Example/social_adapter.dart';
import 'package:all_my_examples/Social-Adapter-Example/social_adapter_model.dart';
import 'package:flutter/material.dart';

final class AppleAdapter extends SocialAdapter {
  /// For Credentials
  @override
  Future<String?> make() async {
    // Services code
    return 'Apple Credential';
  }

  @override
  SocialAdapterModel get model => const SocialAdapterModel(
        name: 'Apple',
        icon: Icons.apple,
        color: Colors.black,
      );

  /// We can also use like that.
  /*
  final SocialAdapterModel model = const SocialAdapterModel(
        name: 'apple',
        icon: Icons.apple,
        color: Colors.blue,
      );
   */
}
