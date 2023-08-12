import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';

class InCompletedTeamsGoals extends StatelessWidget {
  const InCompletedTeamsGoals({
    super.key,
    required this.upcomingCompletedItem,
  });

  final UpcomingCompleted upcomingCompletedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        'assets/images/${upcomingCompletedItem.image1}.png'),
                    AppSized.height5,
                    Text(
                      '${upcomingCompletedItem.text1}',
                      style: AppTextStyes.textTextStyle,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${upcomingCompletedItem.goals}',
                      style: AppTextStyes.goalsTextStyle,
                    ),
                  ],
                  // Proverka
                ),
                Column(
                  children: [
                    Image.asset(
                        'assets/images/${upcomingCompletedItem.image2}.png'),
                    AppSized.height5,
                    Text(
                      '${upcomingCompletedItem.text2}',
                      style: AppTextStyes.textTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
