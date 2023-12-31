import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_valeyball.dart';
import '../utils/duels_showdialog.dart';

class DuelsCard extends StatelessWidget {
  const DuelsCard({
    super.key,
    required this.upcomingCompleted,
  });

  final UpcomingCompletedValleyball upcomingCompleted;

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
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/${upcomingCompleted.alarm}.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      '${upcomingCompleted.date}',
                      style: AppTextStyes.dateTextStyle,
                    ),
                    Text(
                      '${upcomingCompleted.time}',
                      style: AppTextStyes.timeTextStyle,
                    )
                  ],
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
            GestureDetector(
              onTap: () {
                DuelsShowDialog.showMyDialog(context, upcomingCompleted);
              },
              child: Text(
                'Duels'.toUpperCase(),
                style: AppTextStyes.duels,
              ),
            )
          ],
        ),
      ),
    );
  }
}
