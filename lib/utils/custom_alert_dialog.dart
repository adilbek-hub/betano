import 'package:betano/constants/app_sized.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;
  final VoidCallback onYes;
  final VoidCallback onNo;

  const CustomAlertDialog({
    super.key,
    required this.message,
    required this.onYes,
    required this.onNo,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          AppSized.height20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: onYes,
                child: const Text('Yes'),
              ),
              ElevatedButton(
                onPressed: onNo,
                child: const Text('No'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
