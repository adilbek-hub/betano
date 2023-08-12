import 'package:flutter/material.dart';

class ToBack extends StatelessWidget {
  const ToBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
        ),
        const Text(
          'Back',
          style: TextStyle(
            color: Color(0xff2d2d2d),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
