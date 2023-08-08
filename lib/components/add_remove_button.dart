import 'package:flutter/material.dart';

class AddRemoveIconButton extends StatelessWidget {
  const AddRemoveIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: IconButton.styleFrom(
        backgroundColor: const Color(0xfff16721),
      ),
      constraints: const BoxConstraints(maxHeight: 25),
      icon: Icon(
        icon,
        size: 10,
        color: Colors.black,
      ),
      onPressed: onPressed,
    );
  }
}
