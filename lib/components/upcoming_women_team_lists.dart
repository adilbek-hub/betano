import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';

class UpcomingWomenTeamLists extends StatelessWidget {
  const UpcomingWomenTeamLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Image.asset('assets/images/alarm.png')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/PlYellow2.png'),
                            AppSized.height5,
                            const Text(
                              'Leaque 2. Women',
                              style: AppTextStyes.textTextStyle,
                            )
                          ],
                        ),
                        const Column(
                          children: [
                            Text(
                              '07.02',
                              style: AppTextStyes.dateTextStyle,
                            ),
                            Text(
                              '15:30',
                              style: AppTextStyes.timeTextStyle,
                            )
                          ],
                          // Proverka
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/PLBlack2.png'),
                            AppSized.height5,
                            const Text(
                              'Leaque 2. Women',
                              style: AppTextStyes.textTextStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
