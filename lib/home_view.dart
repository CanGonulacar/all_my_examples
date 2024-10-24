import 'package:all_my_examples/Navigaton-Example/navigation_extension.dart';
import 'package:all_my_examples/Navigaton-Example/navigation_route_keys.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.navigate(NavigationRouteKeys.settings),
              child: const Text('Go to Settings'),
            ),
            ElevatedButton(
              onPressed: () => context.navigate(
                NavigationRouteKeys.profile,
                replace: true,
              ),
              child: const Text('Replace with Profile'),
            ),
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
