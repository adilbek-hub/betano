import 'package:flutter/material.dart';

import '../models/upcoming_completed_model.dart';

class ClearAllButton extends StatefulWidget {
  const ClearAllButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ClearAllButton> createState() => _ClearAllButtonState();
}

class _ClearAllButtonState extends State<ClearAllButton> {
  void clearAllItems() {
    setState(() {});
  }

  Future<void> showClearAllDialog(
    BuildContext context,
  ) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Clear All'),
            content: const Text('Are you sure you want to clear all items?'),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Yes'),
                onPressed: () {},
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, top: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            showClearAllDialog(context);
          },
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
