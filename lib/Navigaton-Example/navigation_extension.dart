import 'package:all_my_examples/Navigaton-Example/navigation_route_keys.dart';
import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  /// Used to navigate to a specified `NavigationRoute` with optional
  /// arguments, replace the current route, or clear the navigation stack.
  Future<T?> navigate<T>(
    NavigationRouteKeys route, {
    Object? arguments,
    bool replace = false,
    bool clearStack = false,
  }) {
    if (clearStack) {
      return Navigator.pushNamedAndRemoveUntil(
        this,
        route.name,
        (route) => false,
        arguments: arguments,
      );
    }

    if (replace) {
      return Navigator.pushReplacementNamed(
        this,
        route.name,
        arguments: arguments,
      );
    }

    return Navigator.pushNamed(
      this,
      route.name,
      arguments: arguments,
    );
  }

  /// The `pop` function in Dart is used to pop the current route off the navigation stack with an
  /// optional result.
  void pop<T>([T? result]) => Navigator.pop(this, result);

  /// `canPop()` checks if there is a route that can be popped from the Navigator stack.
  bool canPop() => Navigator.canPop(this);

  /// `popUntil` pops all routes until a specific route is reached in a Flutter application.
  void popUntil(NavigationRouteKeys route) =>
      Navigator.popUntil(this, ModalRoute.withName(route.name));
}
