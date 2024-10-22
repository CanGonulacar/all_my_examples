import 'package:all_my_examples/Custom-Dialog/base_dialog.dart';
import 'package:flutter/material.dart';

final class ExampleBaseDialog extends StatelessWidget {
  /// Shows a success dialog
  static Future<bool?> show<bool>(BuildContext context) async {
    return await BaseDialog.show<bool>(
      context: context,
      builder: (_) => const ExampleBaseDialog(),
    );
  }

  const ExampleBaseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        )
      ],
    );
  }
}

