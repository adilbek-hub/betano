import 'package:betano/components/choose_sport_button.dart';
import 'package:betano/components/upcoming_women_team_lists.dart';
import 'package:betano/constants/app_text_styles.dart';
import 'package:betano/utils/choose_league_showdialog.dart';
import 'package:betano/views/remind_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

import '../models/choose_league_model.dart';
import '../models/upcoming_completed_model.dart';
import '../views/options_view.dart';
import 'choice_in_head_container.dart';
import 'choose_card.dart';

class HeadContainer extends StatefulWidget {
  const HeadContainer({
    super.key,
  });

  @override
  State<HeadContainer> createState() => _HeadContainerState();
}

class _HeadContainerState extends State<HeadContainer> {
  bool isFirst = false;
  bool isSecond = false;
  bool isThird = false;

  void toggleCategoryVisibility() {
    setState(() {
      isFirst = !isFirst;
      isSecond = false;
      isThird = false;
    });
  }

  void toggleRemindVisibility() {
    setState(() {
      isSecond = !isSecond;
      isFirst = false;
      isThird = false;
    });
  }

  void toggleOptionsVisibility() {
    setState(() {
      isThird = !isThird;
      isFirst = false;
      isSecond = false;
    });
  }

//CHOOSE SPORT
  bool isValeyball = false;
  bool isHandball = false;
  bool isValeyballWomen = false;
  bool isHandballWomen = false;
  void toggleValleyballVisibility() {
    setState(() {
      isValeyball = !isValeyball;
      isHandball = false;
      isValeyballWomen = false;
      isHandballWomen = false;
    });
  }

  void toggleHandballVisibility() {
    setState(() {
      isValeyball = false;
      isHandball = !isHandball;
      isValeyballWomen = false;
      isHandballWomen = false;
    });
  }

  void toggleValeyballWomenVisibility() {
    setState(() {
      isValeyball = false;
      isHandball = false;
      isValeyballWomen = !isValeyballWomen;
      isHandballWomen = false;
    });
  }

  void toggleHandballWomenVisibility() {
    setState(() {
      isValeyball = false;
      isHandball = false;
      isValeyballWomen = false;
      isHandballWomen = !isHandballWomen;
    });
  }

//ChooseLeague
  List<ChooseLeague> shooseLeague = shooseLeagueList;

  void showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlertDialog(
                backgroundColor: const Color(0xffe7e7e7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                content: Column(
                  children: [
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 35),
                      child: Text(
                        'Choose sport',
                        style: AppTextStyes.chooseSportTextStyle,
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                            image: 'assets/images/ballValeyball.png',
                            text1: 'Valeyball',
                            bgColor:
                                !isValeyball ? Colors.white : Colors.orange,
                            onTap: () {
                              toggleValleyballVisibility();
                              Navigator.pushNamed(context, '/TableView');
                            }),
                        ChooseCard(
                            image: 'assets/images/bollHandball.png',
                            text1: 'Handball',
                            bgColor: !isHandball ? Colors.white : Colors.orange,
                            onTap: () {
                              toggleHandballVisibility();
                              ChooseLeagueShowDialog.chooseLeagueDialog(
                                  context);
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                          image: 'assets/images/ballValeyball.png',
                          text1: 'Valeyball',
                          text2: 'Women',
                          bgColor:
                              !isValeyballWomen ? Colors.white : Colors.orange,
                          onTap: toggleValeyballWomenVisibility,
                        ),
                        ChooseCard(
                            image: 'assets/images/ballWomenHandball.png',
                            text1: 'Handball',
                            text2: 'Women',
                            bgColor:
                                !isHandballWomen ? Colors.white : Colors.orange,
                            onTap: () {
                              toggleHandballWomenVisibility();
                            }),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Image.asset('assets/images/B_etano.png'),
                    ),
                  ],
                ),
              ),
              AlertDialog(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Center(
                    child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: AppTextStyes.cencelTextStyle,
                  ),
                )),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.black1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceInHeadContainer(
                      bgColor:
                          !isFirst ? Colors.transparent : AppColors.tabColor,
                      borderColor: !isFirst ? Colors.white : AppColors.tabColor,
                      text: 'Category',
                      style: GoogleFonts.roboto(
                        color: !isFirst ? Colors.white : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      onTap: () {
                        toggleCategoryVisibility();
                        showAboutDialog(context);
                      }),
                  ChoiceInHeadContainer(
                      bgColor: !isSecond
                          ? Colors.transparent
                          : const Color(0xfff16721),
                      borderColor:
                          !isSecond ? Colors.white : AppColors.tabColor,
                      text: 'Remind',
                      style: GoogleFonts.roboto(
                        color: !isSecond ? Colors.white : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      onTap: () {
                        toggleRemindVisibility();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RemindView(
                              upcomingCompletedList: upcomingCompletedList,
                            ),
                          ),
                        );
                      }),
                  ChoiceInHeadContainer(
                      bgColor:
                          !isThird ? Colors.transparent : AppColors.tabColor,
                      borderColor: !isThird ? Colors.white : AppColors.tabColor,
                      text: 'Options',
                      style: GoogleFonts.roboto(
                        color: !isThird ? Colors.white : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      onTap: () {
                        toggleOptionsVisibility();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OptionView(
                              shooseLeagueList: shooseLeagueList,
                            ),
                          ),
                        );
                      }),
                ],
              ),
              const ChooseSportButton(
                // image: 'assets/images/whiteValeyballBall.png',
                text: 'Choose sport',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
