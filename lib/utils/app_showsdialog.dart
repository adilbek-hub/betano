import 'package:flutter/material.dart';
import '../components/table_rows.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

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
              AlertDialog(
                backgroundColor: AppColors.tabColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                insetPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                title: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    "Ok Go back",
                    textAlign: TextAlign.center,
                  ),
                ),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          );
        });
  }
}
