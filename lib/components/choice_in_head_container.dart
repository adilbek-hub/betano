import 'package:flutter/material.dart';

class ChoiceInHeadContainer extends StatelessWidget {
  const ChoiceInHeadContainer({
    super.key,
    required this.bgColor,
    required this.borderColor,
    required this.text,
    this.onTap,
    this.style,
  });
  final Color bgColor;
  final Color borderColor;
  final String text;
  final void Function()? onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 89,
        height: 35,
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
