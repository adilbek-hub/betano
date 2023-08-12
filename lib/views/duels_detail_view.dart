import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/broadcast.dart';
import '../components/choice_in_head_container.dart';
import '../components/choose_sport_button.dart';
import '../components/detail_valeyball_women_place.dart';
import '../components/in_completed_teams_goals.dart';
import '../components/to_back.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';

class DuelsDetailView extends StatelessWidget {
  const DuelsDetailView({
    Key? key,
    required this.upcomingCompleted,
  }) : super(key: key);
  // final UpcomingCompleted upcomingCompletedItem;
  // final List<UpcomingCompleted> set123List;
  // final List<UpcomingCompleted> detailWomenValeyballPlaceList;
  final UpcomingCompleted upcomingCompleted;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.black1,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceInHeadContainer(
                    bgColor: Colors.orange,
                    borderColor: Colors.orange,
                    text: 'Category',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ChoiceInHeadContainer(
                    bgColor: Colors.orange,
                    borderColor: Colors.orange,
                    text: 'Remind',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ChoiceInHeadContainer(
                    bgColor: Colors.orange,
                    borderColor: Colors.orange,
                    text: 'Options',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ChooseSportButton(
                image: 'assets/images/whiteValeyballBall.png',
                text: 'Valleyball',
              ),
            ],
          ),
        ),
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/images/${upcomingCompleted.alarm}.png')
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
                    AppSized.height20,
                    DetailsValleyballWomenPlace(),
                  ],
                ),
              ),
              Broadcast(
                broadcastList: broadcastList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
