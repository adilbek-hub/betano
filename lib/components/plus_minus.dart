import 'package:flutter/material.dart';

import '../models/display_classes_model.dart';

class PlusMinusContainer extends StatefulWidget {
  const PlusMinusContainer({super.key});

  @override
  _PlusMinusContainerState createState() => _PlusMinusContainerState();
}

class _PlusMinusContainerState extends State<PlusMinusContainer> {
  bool showText = true;

  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(showText ? Icons.add : Icons.remove),
                onPressed: toggleText,
              ),
              const LetterWidget('w'),
              const LetterWidget('d'),
              const LetterWidget('l'),
              const LetterWidget('p'),
            ],
          ),
          if (showText)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 7; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NumberWidget(i + 1),
                  ),
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 7; i++)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: HeartWidget(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
