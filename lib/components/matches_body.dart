import 'package:betano/components/completed_women_team_lists.dart';
import 'package:betano/components/upcoming_women_team_lists.dart';
import 'package:betano/views/team_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:betano/components/upcoming_completed_button.dart';
import 'package:betano/constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../models/upcoming_completed_model.dart';

class MatchesBody extends StatefulWidget {
  const MatchesBody({super.key});

  @override
  State<MatchesBody> createState() => _MatchesBodyState();
}

class _MatchesBodyState extends State<MatchesBody> {
  Color button1Color = AppColors.upcomingCompleted;
  Color button2Color = AppColors.upcomingCompleted;
  Color buttonTextColor = AppColors.white;
  Color unButtonTextColor = AppColors.white;
  bool showUpcomingCompleted = false;
  void onTab() {
    if (button1Color == AppColors.upcomingCompleted ||
        buttonTextColor == AppColors.white) {
      setState(() {
        button1Color = AppColors.tabColor;
        button2Color = AppColors.upcomingCompleted;
        buttonTextColor = AppColors.black1;
        unButtonTextColor = AppColors.white;
        showUpcomingCompleted = !showUpcomingCompleted;
      });
    } else if (button2Color == AppColors.upcomingCompleted ||
        unButtonTextColor == AppColors.white) {
      setState(() {
        button2Color = AppColors.tabColor;
        button1Color = AppColors.upcomingCompleted;
        unButtonTextColor = AppColors.black1;
        buttonTextColor = AppColors.white;
        showUpcomingCompleted = !showUpcomingCompleted;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      onTab();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AppSized.height25,
          Container(
            width: 251,
            decoration: BoxDecoration(
              color: AppColors.upcomingCompleted,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UpcomingCompletedButton(
                      backgroundColor: button1Color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      text: 'Upcoming',
                      style: TextStyle(
                        color: buttonTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      onPressed: () {
                        onTab();
                      },
                    ),
                    UpcomingCompletedButton(
                      backgroundColor: button2Color,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      text: 'Completed',
                      style: TextStyle(
                        color: unButtonTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      onPressed: onTab,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (showUpcomingCompleted)
            UpcomingWomenTeamLists(
              upcomingCompletedList: upcomingCompletedList,
            ),
          if (!showUpcomingCompleted)
            CompletedWomenTeamLists(
              upcomingCompletedList: upcomingCompletedList,
            ),
        ],
      ),
    );
  }
}
