import 'package:all_my_examples/Navigaton-Example/navigation_extension.dart';
import 'package:all_my_examples/Navigaton-Example/navigation_route_keys.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile View'),
            ElevatedButton(
              onPressed: () => context.navigate(
                NavigationRouteKeys.home,
                clearStack: true,
              ),
              child: const Text('Go Home (Clear Stack)'),
            ),
          ],
        ),
      ),
    );
  }
}
