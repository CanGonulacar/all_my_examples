import 'package:all_my_examples/Social-Adapter-Example/social_adapter.dart';
import 'package:all_my_examples/Social-Adapter-Example/social_adapter_model.dart';
import 'package:flutter/material.dart';

final class GoogleAdapter extends SocialAdapter {
  @override
  Future<String?> make() async {
    // Services code
    return 'Google Credential';
  }

  @override
  SocialAdapterModel get model => const SocialAdapterModel(
        name: 'Google',
        icon: Icons.mail_outline_sharp,
        color: Color.fromARGB(255, 215, 68, 68),
      );
}
