import 'package:flutter/material.dart';

final class SuccessDialog extends StatelessWidget {
  /// Shows a success dialog
  static Future<bool?> show<bool>(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (_) => const SuccessDialog(),
      barrierDismissible: false,
      useSafeArea: false,
    );
  }

  const SuccessDialog({super.key});

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
