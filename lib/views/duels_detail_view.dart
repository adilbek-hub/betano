import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/choice_in_head_container.dart';
import '../components/choose_sport_button.dart';
import '../components/detail_valeyball_women_place.dart';
import '../components/duels_card.dart';
import '../components/to_back.dart';
import '../components/vertical_divider.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';
import '../utils/duels_showdialog.dart';

class DuelsDetailView extends StatelessWidget {
  const DuelsDetailView({
    Key? key,
    required this.upcomingCompleted,
  }) : super(key: key);
  final UpcomingCompleted upcomingCompleted;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const ToBack(),
                    DuelsCard(upcomingCompleted: upcomingCompleted),
                    AppSized.height20,
                    DetailsValleyballWomenPlace(),
                  ],
                ),
              ),
              TeamsTileGoals(teamGoalList: teamGoalList),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamsTileGoals extends StatelessWidget {
  const TeamsTileGoals({
    Key? key,
    required this.teamGoalList,
  }) : super(key: key);
  final List<UpcomingCompleted> teamGoalList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 550,
      decoration: const BoxDecoration(
        color: Color(0xFF343434),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xff4CC314),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[0].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[0].text2}',
                          style: const TextStyle(
                            color: Color(0xff4CC314),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xffC31414),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[1].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[1].text2}',
                          style: const TextStyle(
                            color: Color(0xffC31414),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xffFF7D05),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[2].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[2].text2}',
                          style: const TextStyle(
                            color: Color(0xffFF7D05),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xff4CC314),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[3].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[3].text2}',
                          style: const TextStyle(
                            color: Color(0xff4CC314),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xffC31414),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[4].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[4].text2}',
                          style: const TextStyle(
                            color: Color(0xffC31414),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const VerticalDividering(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xff4CC314),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[5].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[5].text2}',
                          style: const TextStyle(
                            color: Color(0xff4CC314),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xffFF7D05),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[6].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[6].text2}',
                          style: const TextStyle(
                            color: Color(0xffFF7D05),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: Color(0xff4CC314),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[7].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[7].text2}',
                          style: const TextStyle(
                            color: Color(0xff4CC314),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xffFF7D05),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[8].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[8].text2}',
                          style: const TextStyle(
                            color: Color(0xffFF7D05),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TeamGoalCard(
                    bgColor: Colors.transparent,
                    borderColor: const Color(0xffFF7D05),
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${teamGoalList[9].text1}',
                          style: const TextStyle(
                            color: Color(0xffE8E8E8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AppSized.height5,
                        Text(
                          '${teamGoalList[9].text2}',
                          style: const TextStyle(
                            color: Color(0xffFF7D05),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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

class TeamGoalCard extends StatelessWidget {
  const TeamGoalCard({
    Key? key,
    this.borderColor,
    required this.widget,
    this.bgColor = Colors.white,
    this.width = 149,
    this.height = 74,
  }) : super(key: key);

  final Color? borderColor;
  final Widget widget;
  final Color bgColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? Colors.white),
        color: bgColor,
      ),
      child: widget,
    );
  }
}
