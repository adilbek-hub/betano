import 'package:flutter/material.dart';

class UpcomingCompletedButton extends StatelessWidget {
  const UpcomingCompletedButton({
    Key? key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    required this.style,
    required this.borderRadius,
  }) : super(key: key);
  final Color backgroundColor;
  final void Function() onPressed;
  final String text;
  final TextStyle style;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(125.5, 48),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: style),
    );
  }
}
