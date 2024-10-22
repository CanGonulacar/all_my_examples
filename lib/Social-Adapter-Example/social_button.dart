import 'package:all_my_examples/Social-Adapter-Example/social_adapter.dart';
import 'package:flutter/material.dart';

final class SocialButton<T extends SocialAdapter> extends StatelessWidget {
  /// Use [AppleAdapter] or [FacebookAdapter] or [GoogeAdapter]
  final T adapter;
  final void Function(String token) onCompleted;
  const SocialButton({
    super.key,
    required this.adapter,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async => onCompleted.call(await adapter.make.call() ?? ''),
      label: Text(adapter.model.name),
      icon: Icon(
        adapter.model.icon,
        color: adapter.model.color,
      ),
    );
  }
}
