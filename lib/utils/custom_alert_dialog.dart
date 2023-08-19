import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;
  final VoidCallback onYes;
  final VoidCallback onNo;

  CustomAlertDialog({
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
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: onYes,
                child: Text('Yes'),
              ),
              ElevatedButton(
                onPressed: onNo,
                child: Text('No'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
