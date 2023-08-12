import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/all_sets.dart';
import '../components/broadcast.dart';
import '../components/choice_in_head_container.dart';
import '../components/choose_sport_button.dart';
import '../components/detail_valeyball_women_place.dart';
import '../components/to_back.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';

class TeamDetailView extends StatelessWidget {
  const TeamDetailView({
    Key? key,
    required this.upcomingCompletedItem,
    required this.set123List,
    required this.detailWomenValeyballPlaceList,
  }) : super(key: key);
  final UpcomingCompleted upcomingCompletedItem;
  final List<UpcomingCompleted> set123List;
  final List<UpcomingCompleted> detailWomenValeyballPlaceList;

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
                    AppSized.height20,
                    DetailsValleyballWomenPlace(),
                  ],
                ),
              ),
              for (UpcomingCompleted sets in set123List)
                AllSets(set123List: [sets]),
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
