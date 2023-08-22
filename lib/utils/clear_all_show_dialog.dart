import 'package:betano/constants/app_sized.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ClearAllShowDialog {
  static Future<void> showMyDialog(context, Function cleanAll) async {
    return showDialog(
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              surfaceTintColor: const Color(0xffE7E7E7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              insetPadding: const EdgeInsets.only(
                left: 20,
                top: 40,
                right: 20,
              ),
              content: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "Info",
                            style: TextStyle(
                              color: Color(0xff313131),
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          AppSized.height15,
                          Text(
                            'Are you sure that you want ot delete all youre reminds?',
                            style: TextStyle(
                              color: Color(0xff404040),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(height: 23),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.tabColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 40,
                  65,
                ),
              ),
              onPressed: () {
                cleanAll();
                Navigator.pop(context);
              },
              child: const Text(
                'Ok Go back',
                style: TextStyle(
                  color: Color(0xff474747),
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 133),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cansel',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

final clearAllShowDialog = ClearAllShowDialog();
