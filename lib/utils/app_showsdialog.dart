import 'package:flutter/material.dart';
import '../components/table_rows.dart';
import '../constants/app_colors.dart';

class AppShowDialogs {
  static Future<void> showMyDialog(context) async {
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
                  content: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const TableRows(),
                  ),
                ),
              ),
              const SizedBox(height: 19),
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
                onPressed: () => Navigator.pop(context),
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
            ],
          );
        });
  }
}
