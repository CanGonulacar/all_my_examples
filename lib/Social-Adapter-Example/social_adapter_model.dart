import 'package:flutter/material.dart';

final class SocialAdapterModel {
  final String name;
  final IconData icon;
  final Color color;

  const SocialAdapterModel({
    required this.name,
    required this.icon,
    required this.color,
  });

  /// We can use factory constructor to create an instance of this class

  /*
  factory SocialAdapterModel.facebook() => const SocialAdapterModel(
        name: 'facebook',
        icon: Icons.facebook,
        color: Colors.blue,
      );
  */
  /// We can also generate it in the [FacebookAdapter] class (i like this way)
}
