import 'package:all_my_examples/Custom-Dialog/base_dialog.dart';
import 'package:flutter/material.dart';

final class Example2 extends AlertDialog {
  static Future<bool?> show<bool>(BuildContext context) async {
    return await BaseDialog.show<bool>(
      context: context,
      builder: (_) => Example2(context),
    );
  }

  Example2(BuildContext context, {super.key})
      : super(
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            )
          ],
        );
}
