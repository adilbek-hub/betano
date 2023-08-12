import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/all_sets.dart';
import '../components/choice_in_head_container.dart';
import '../components/choose_sport_button.dart';
import '../components/detail_valeyball_women_place.dart';
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
                          'Back',
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
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 4),
                          ),
                          itemCount: detailWomenValeyballPlaceList.length,
                          itemBuilder: (BuildContext context, int index) {
                            final detailWomenValeyballPlace =
                                detailWomenValeyballPlaceList[index];
                            return Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xff828282),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${detailWomenValeyballPlace.text3}',
                                        style: AppTextStyes.detail,
                                      ),
                                      Text(
                                        '${detailWomenValeyballPlace.text4}',
                                        style: AppTextStyes.detail2,
                                      ),
                                    ],
                                  ),
                                ));
                          },
                        ),
                      ),
                    ),
                    // DetailsValleyballWomenPlace(),
                  ],
                ),
              ),

              // for (UpcomingCompleted sets in set123List)
              //   AllSets(set123List: [sets]),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 200,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [
              //         Color(0xFF343434),
              //         Color(0xFF212121),
              //       ],
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
