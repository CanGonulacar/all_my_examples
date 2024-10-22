import 'package:all_my_examples/Custom-Dialog/success_dialog.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final result = await SuccessDialog.show(context);
              if (result == null) return;

              debugPrint(result);
            },
            child: const Text('Göster'),
          )
        ],
      ),
    );
  }
}
