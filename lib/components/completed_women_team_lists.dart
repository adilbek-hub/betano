import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';
import '../views/team_detail_view.dart';

class CompletedWomenTeamLists extends StatelessWidget {
  const CompletedWomenTeamLists({
    Key? key,
    this.onTap,
    required this.upcomingCompletedList,
  }) : super(key: key);
  final void Function()? onTap;
  final List<UpcomingCompleted> upcomingCompletedList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: upcomingCompletedList.length,
        itemBuilder: (context, index) {
          final upcomingCompleted = upcomingCompletedList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TeamDetailView(upcomingCompletedItem: upcomingCompleted),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                top: 12,
                right: 20,
              ),
              height: 133,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white,
                  border: Border.all(
                    color: AppColors.borderColor,
                    width: 2,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/${upcomingCompleted.image1}.png'),
                            AppSized.height5,
                            Text(
                              '${upcomingCompleted.text1}',
                              style: AppTextStyes.textTextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '${upcomingCompleted.goals}',
                              style: AppTextStyes.goalsTextStyle,
                            ),
                          ],
                          // Proverka
                        ),
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/${upcomingCompleted.image2}.png'),
                            AppSized.height5,
                            Text(
                              '${upcomingCompleted.text2}',
                              style: AppTextStyes.textTextStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
