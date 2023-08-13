import 'package:flutter/material.dart';

class VerticalDividering extends StatelessWidget {
  const VerticalDividering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      width: 20,
      thickness: 1,
      indent: 10,
      endIndent: 0,
      color: Colors.grey,
    );
  }
}
