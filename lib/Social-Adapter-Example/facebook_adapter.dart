import 'package:all_my_examples/Social-Adapter-Example/social_adapter.dart';
import 'package:all_my_examples/Social-Adapter-Example/social_adapter_model.dart';
import 'package:flutter/material.dart';

final class FacebookAdapter extends SocialAdapter {
  @override
  Future<String?> make() async {
    // Services code
    return 'Facebook Credential';
  }

  @override
  SocialAdapterModel get model => const SocialAdapterModel(
        name: 'Facebook',
        icon: Icons.facebook,
        color: Colors.blue,
      );

  /// We can also use like that.
  /**
   final SocialAdapterModel model = const SocialAdapterModel(
        name: 'facebook',
        icon: Icons.facebook,
        color: Colors.blue,
      );
   */
}
