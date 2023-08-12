import 'package:flutter/material.dart';
import '../components/detail_valeyball_women_place.dart';
import '../components/head_container.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';

class TeamDetailView2 extends StatelessWidget {
  const TeamDetailView2({
    Key? key,
    required this.upcomingCompletedItem,
  }) : super(key: key);
  final UpcomingCompleted upcomingCompletedItem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const HeadContainer(),
            Expanded(
              flex: 4,
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
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          ),
                        ),
                        const Text(
                          'Back2',
                          style: TextStyle(
                            color: Color(0xff2d2d2d),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
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
                    ),
                    const SizedBox(height: 20),
                    DetailsValleyballWomenPlace(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
