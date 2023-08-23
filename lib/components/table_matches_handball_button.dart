import 'package:betano/components/table_handall_body.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'custom_button.dart';
import 'matches_handball_body.dart';

class TableMatchesHandballButton extends StatefulWidget {
  const TableMatchesHandballButton({super.key});

  @override
  State<TableMatchesHandballButton> createState() =>
      _TableMatchesHandballButtonState();
}

class _TableMatchesHandballButtonState
    extends State<TableMatchesHandballButton> {
  Color button1Color = AppColors.white;
  Color button2Color = AppColors.white;
  bool showTable = true;
  void changeButton() {
    if (button1Color == AppColors.white) {
      setState(() {
        button1Color = AppColors.tabColor;
        button2Color = AppColors.white;
      });
    } else {
      setState(() {
        button1Color = AppColors.white;
        button2Color = AppColors.tabColor;
      });
    }
  }

  void toggleView() {
    setState(() {
      showTable = !showTable;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      button1Color = AppColors.tabColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_handball.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                  backgroundColor: button1Color,
                  onPressed: () {
                    changeButton();
                    toggleView();
                  },
                  text: 'Table',
                ),
                CustomButton(
                  backgroundColor: button2Color,
                  onPressed: () {
                    changeButton();
                    toggleView();
                  },
                  text: 'Matches',
                ),
              ],
            ),
            if (showTable) const TableHandballBody(),
            if (!showTable) const MatchesHandballBody(),
          ],
        ),
      ),
    );
  }
}
