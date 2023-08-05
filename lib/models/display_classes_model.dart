import 'package:flutter/material.dart';

class LetterWidget extends StatelessWidget {
  final String letter;
  const LetterWidget(this.letter, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(letter);
  }
}

class NumberWidget extends StatelessWidget {
  final int number;
  const NumberWidget(this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(number.toString());
  }
}

class HeartWidget extends StatelessWidget {
  const HeartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.favorite);
  }
}
