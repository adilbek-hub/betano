import 'package:betano/models/upcoming_completed_valeyball.dart';
import 'package:betano/views/table_matches_handball_women_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:betano/constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/choose_league_model.dart';
import '../views/table_matches_handball_view.dart';
import 'choose_card.dart';

class ChooseSportButton extends StatefulWidget {
  const ChooseSportButton({
    Key? key,
    this.image,
    required this.text,
  }) : super(key: key);
  final String? image;
  final String text;

  @override
  State<ChooseSportButton> createState() => _ChooseSportButtonState();
}

class _ChooseSportButtonState extends State<ChooseSportButton> {
  //ChooseLeague
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

  List<ChooseLeague> shooseLeague = shooseLeagueList;

  String displayedInfo = 'Choose sport';
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
                insetPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                            image: 'assets/images/ballValeyball.png',
                            text1: view1.valeyball,
                            bgColor:
                                !isValeyball ? Colors.white : Colors.orange,
                            onTap: () {
                              toggleValleyballVisibility();
                              Navigator.pushNamed(context, '/TableView');
                              setState(() {
                                displayedInfo = view1.valeyball;
                              });
                            }),
                        ChooseCard(
                          image: 'assets/images/bollHandball.png',
                          text1: view1.handball,
                          bgColor: !isHandball ? Colors.white : Colors.orange,
                          onTap: () {
                            toggleHandballVisibility();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableMatchesHandballView(
                                  upcomingCompletedValeyballList:
                                      upcomingCompletedValeyballList,
                                ),
                              ),
                            );
                            // ChooseLeagueShowDialog.chooseLeagueDialog(context);
                            setState(() {
                              displayedInfo = view1.handball;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                          image: 'assets/images/ballValeyball.png',
                          text1: view1.valeyballWomen,
                          bgColor:
                              !isValeyballWomen ? Colors.white : Colors.orange,
                          onTap: () {
                            toggleValeyballWomenVisibility();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TableMatchesHandballView(
                                          upcomingCompletedValeyballList:
                                              upcomingCompletedValeyballList,
                                        )));
                            setState(() {
                              displayedInfo = view1.valeyballWomen;
                            });
                          },
                        ),
                        ChooseCard(
                            image: 'assets/images/ballWomenHandball.png',
                            text1: view1.handballWomen,
                            bgColor:
                                !isHandballWomen ? Colors.white : Colors.orange,
                            onTap: () {
                              toggleHandballWomenVisibility();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TableMatchesHandballWomenView(
                                            upcomingCompletedValeyballList:
                                                upcomingCompletedValeyballList,
                                          )));
                              setState(() {
                                displayedInfo = view1.handballWomen;
                              });
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
              AppSized.height20,
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cansel',
                  style: AppTextStyes.cencelTextStyle,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 189,
      height: 36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          backgroundColor: const Color(0xff333333),
        ),
        onPressed: () {
          showAboutDialog(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('${widget.image ?? ''}'),
            AppSized.width5,
            Text(
              widget.text,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
