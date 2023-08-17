import 'package:flutter/material.dart';

class ClearAllShowDialog {
  static Future<void> showMyDialog(context, Function cleanAll) async {
    return showDialog(
        context: context,
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                height: 650,
                child: AlertDialog(
                  backgroundColor: const Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  insetPadding: const EdgeInsets.only(
                    left: 20,
                    top: 40,
                    right: 20,
                  ),
                  title: const Text(
                    "Info",
                    style: TextStyle(
                      color: Color(0xff313131),
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Approve'),
                      onPressed: () {
                        cleanAll();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

final clearAllShowDialog = ClearAllShowDialog();
