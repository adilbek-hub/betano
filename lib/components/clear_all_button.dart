import 'package:flutter/material.dart';

class ClearAllButton extends StatelessWidget {
  const ClearAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, top: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          child: const Text(
            'Clear all',
            style: TextStyle(
              color: Color(
                0xffdc2424,
              ),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
