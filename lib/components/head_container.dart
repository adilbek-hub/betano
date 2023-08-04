import 'package:betano/components/white_dialog.dart';
import 'package:betano/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

import 'choice_in_head_container.dart';

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
                        style: TextStyle(
                          color: Color(0xff313131),
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                          onTap: toggleValleyballVisibility,
                          image: 'assets/images/ballValeyball.png',
                          text1: 'Valeyball',
                          bgColor: !isValeyball ? Colors.white : Colors.orange,
                        ),
                        ChooseCard(
                            image: 'assets/images/bollHandball.png',
                            text1: 'Handball',
                            bgColor: !isHandball ? Colors.white : Colors.orange,
                            onTap: () {
                              toggleHandballVisibility();
                              chooseLeagueDialog(context);
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
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
              ),
            ],
          ),
        );
      },
    );
  }

  void chooseLeagueDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Column(
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
                    Row(children: [
                      SizedBox(
                        width: 23,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                          ),
                          color: AppColors.tabColor,
                        ),
                      ),
                      const Text(
                        'Back',
                        style: AppTextStyes.backTextStyle,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Choose League',
                          style: AppTextStyes.leagueTextStyle,
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 270,
                      height: 456,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Card(
                                child: ListTile(
                                  title: Text('data'),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                )),
            AlertDialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Center(
                  child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
            ),
          ],
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
                      bgColor: !isFirst ? Colors.transparent : Colors.orange,
                      borderColor: !isFirst ? Colors.white : Colors.orange,
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
                    bgColor: !isSecond ? Colors.transparent : Colors.orange,
                    borderColor: !isSecond ? Colors.white : Colors.orange,
                    text: 'Remind',
                    style: GoogleFonts.roboto(
                      color: !isSecond ? Colors.white : Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onTap: toggleRemindVisibility,
                  ),
                  ChoiceInHeadContainer(
                    bgColor: !isThird ? Colors.transparent : Colors.orange,
                    borderColor: !isThird ? Colors.white : Colors.orange,
                    text: 'Options',
                    style: GoogleFonts.roboto(
                      color: !isThird ? Colors.white : Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onTap: toggleOptionsVisibility,
                  ),
                ],
              ),
              const WhiteDialog(),
            ],
          ),
        ),
      ),
    );
  }
}
