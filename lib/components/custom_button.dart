import 'package:betano/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
  });
  final Color backgroundColor;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          minimumSize: const Size(0, 54),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyes.tableMatchesTextStyle,
        ),
      ),
    );
  }
}
