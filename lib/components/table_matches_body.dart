import 'package:betano/components/league2womenList.dart';
import 'package:betano/constants/app_text_styles.dart';
import 'package:betano/models/choose_league_model.dart';
import 'package:betano/models/league_women.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'custom_button.dart';

class TableMatchesBody extends StatefulWidget {
  const TableMatchesBody({
    super.key,
  });

  @override
  State<TableMatchesBody> createState() => _TableMatchesBodyState();
}

class _TableMatchesBodyState extends State<TableMatchesBody> {
  Color button1Color = AppColors.white;
  Color button2Color = AppColors.white;
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
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
                  onPressed: changeButton,
                  text: 'Table',
                ),
                CustomButton(
                  backgroundColor: button2Color,
                  onPressed: changeButton,
                  text: 'Matches',
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Image.asset('assets/images/bigPLBack.png'),
                  const SizedBox(height: 25),
                  const Text(
                    'League 2. Women',
                    style: AppTextStyes.leaque2Style,
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset('assets/images/i.png'),
                    ),
                  ),
                  const Divider(
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  CustomWidget(
                    shooseLeague: shooseLeagueList,
                    aList: leagueWomenList,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
