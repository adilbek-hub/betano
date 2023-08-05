import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _CustomIcon(),
        SizedBox(width: 10),
        _CustomTextColumn('A', [
          'Text 1',
          'Text 2',
          'Text 3',
          'Text 4',
          'Text 5',
          'Text 6',
          'Text 7'
        ]),
        SizedBox(width: 10),
        _CustomTextColumn('B', [
          'Text 1',
          'Text 2',
          'Text 3',
          'Text 4',
          'Text 5',
          'Text 6',
          'Text 7'
        ]),
        SizedBox(width: 10),
        _CustomTextColumn('C', [
          'Text 1',
          'Text 2',
          'Text 3',
          'Text 4',
          'Text 5',
          'Text 6',
          'Text 7'
        ]),
      ],
    );
  }
}

class _CustomIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add,
      size: 30,
    );
  }
}

class _CustomTextColumn extends StatelessWidget {
  final String letter;
  final List<String> texts;

  _CustomTextColumn(this.letter, this.texts);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(letter,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Column(
          children: texts.map((text) => Text(text)).toList(),
        ),
      ],
    );
  }
}
