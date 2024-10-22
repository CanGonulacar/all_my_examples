import 'package:all_my_examples/Navigaton-Example/navigation_route_keys.dart';
import 'package:all_my_examples/home_view.dart';
import 'package:all_my_examples/profile_view.dart';
import 'package:flutter/material.dart';

/// Route Generation
abstract final class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      NavigationRouteKeys.home.name: (context) => const HomeView(),
      NavigationRouteKeys.settings.name: (context) => const HomeView(),
      NavigationRouteKeys.profile.name: (context) => const ProfileView(),
      NavigationRouteKeys.products.name: (context) => const HomeView(),
      NavigationRouteKeys.notifications.name: (context) => const HomeView(),
    };

    final builder = routes[settings.name];
    if (builder == null) {
      /// Default Route
      return MaterialPageRoute(builder: (_) => const HomeView());
    }

    return MaterialPageRoute(builder: builder);
  }
}
