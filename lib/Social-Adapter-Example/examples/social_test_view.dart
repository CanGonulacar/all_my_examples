import 'package:all_my_examples/Social-Adapter-Example/apple_adapter.dart';
import 'package:all_my_examples/Social-Adapter-Example/facebook_adapter.dart';
import 'package:all_my_examples/Social-Adapter-Example/google_adapter.dart';
import 'package:all_my_examples/Social-Adapter-Example/social_button.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SocialButton(
            adapter: FacebookAdapter(),
            onCompleted: (token) {
              print(token);
            },
          ),
          SocialButton(
            adapter: AppleAdapter(),
            onCompleted: (token) {
              print(token);
            },
          ),
          SocialButton(
            adapter: GoogleAdapter(),
            onCompleted: (token) {
              print(token);
            },
          ),
        ],
      ),
    );
  }
}
