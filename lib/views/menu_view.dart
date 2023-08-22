import 'package:betano/models/upcoming_completed_valeyball.dart';
import 'package:flutter/material.dart';
import '../components/choose_sport_button.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/choose_league_model.dart';

import '../utils/clear_all_show_dialog.dart';
import 'duels_detail_view.dart';
import 'options_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({
    Key? key,
    required this.upcomingCompletedList,
  }) : super(key: key);
  final List<UpcomingCompletedValleyball> upcomingCompletedList;

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int currentIndex = 0;
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

  String displayedInfo = 'Choose sport';
//ChooseLeague
  List<ChooseLeague> shooseLeague = shooseLeagueList;

  buildCategory({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() => currentIndex = index),
        child: Container(
          width: 89,
          height: 35,
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: currentIndex == 0 ? AppColors.tabColor : null,
            border: Border.all(
                color: currentIndex == 0 ? AppColors.tabColor : Colors.white),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            name,
            style: TextStyle(
              color: currentIndex == 0 ? Colors.black : Colors.white,
            ),
          ),
        ),
      );

  buildRemind({
    required int index,
    required String name,
  }) =>
      GestureDetector(
        onTap: () => setState(() => currentIndex = index),
        child: Container(
          width: 89,
          height: 35,
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: currentIndex == 1 ? AppColors.tabColor : null,
            border: Border.all(
              color: currentIndex == 1 ? AppColors.tabColor : Colors.white,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            name,
            style: TextStyle(
              color: currentIndex == 1 ? Colors.black : Colors.white,
            ),
          ),
        ),
      );

  buildOptions({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() => currentIndex = index),
        child: Container(
          width: 89,
          height: 35,
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: currentIndex == 2 ? Colors.red : null,
            border: Border.all(
              color: currentIndex == 2 ? AppColors.tabColor : Colors.white,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            name,
            style: TextStyle(
              color: currentIndex == 2 ? Colors.black : Colors.white,
            ),
          ),
        ),
      );

  buildAllCategory() => Expanded(
        flex: 4,
        child: ElevatedButton(onPressed: () {}, child: Text('data')),
      );
//buildAllRemind logika
  bool allCleared = false;
  void cleanAll() {
    setState(() {
      upcomingCompletedValeyballList.clear();
      allCleared = true;
    });
  }

  void removeItem(int index) {
    setState(() {
      widget.upcomingCompletedList.removeAt(index);
    });
  }

  bool showNext = true;
  void toggleNext() {
    setState(() {
      showNext = !showNext;
    });
  }

  buildAllRemind() => Expanded(
        flex: 4,
        child: Column(
          children: [
            AppSized.height10,
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    ///Для удаления всех листов на экране. Бүттүм.
                    setState(() {
                      allCleared = true;
                    });

                    ClearAllShowDialog.showMyDialog(context, cleanAll);
                  },
                  child: Text(
                    'Clear all',
                    style: TextStyle(
                      color: allCleared
                          ? const Color(0xffdc2424)
                          : const Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: upcomingCompletedValeyballList.length,
                  itemBuilder: (context, index) {
                    final upcomingCompleted =
                        upcomingCompletedValeyballList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DuelsDetailView(
                              upcomingCompleted: upcomingCompleted,
                            ),
                          ),
                        );
                      },
                      child: Container(
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
                                  InkWell(
                                    onTap: () {
                                      removeItem(index);
                                    },
                                    child: Image.asset(
                                      'assets/images/${upcomingCompleted.alarm}.png',
                                      color: allCleared ? Colors.red : null,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                            'assets/images/${upcomingCompleted.image1}.png'),
                                      ),
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
                    );
                  }),
            ),
          ],
        ),
      );

  // buildAllOptions logila

  String chooseLeagueText = 'Choose League';
  bool alertSelected = true;
  void onButton() {
    setState(() {
      alertSelected = !alertSelected;
    });
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                        itemCount: shooseLeague.length,
                        itemBuilder: (context, index) {
                          final choose = shooseLeague[index];
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  chooseLeagueText = choose.text;
                                  alertSelected = false;
                                });
                                Navigator.pop(context);
                              },
                              child: Card(
                                child: ListTile(
                                  leading: Image.asset(
                                      'assets/images/${choose.image}.png'),
                                  title: Text(choose.text),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  buildAllOptions() => Expanded(
        flex: 4,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const OptionsCard(
                text: 'Sound',
              ),
              const OptionsCard(
                text: 'Calendar \nsynchronization',
              ),
              const OptionsCard(
                text: 'Notifications',
              ),
              Column(
                children: [
                  const Text(
                    'Starting League',
                    style: TextStyle(
                      color: Color(0xff030303),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AppSized.height15,
                  alertSelected
                      ? OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: const Size(320, 48),
                            side: const BorderSide(
                              color: AppColors.tabColor,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {
                            chooseLeagueDialog(context);
                          },
                          child: Text(chooseLeagueText,
                              style: const TextStyle(
                                color: AppColors.tabColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            fixedSize: const Size(320, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {
                            chooseLeagueDialog(context);
                          },
                          child: Text(chooseLeagueText,
                              style: const TextStyle(
                                color: Color(0xff8d8d8d),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.tabColor,
                  fixedSize: const Size(320, 48),
                  side: const BorderSide(
                    color: AppColors.tabColor,
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AlertDialog(
                              backgroundColor: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              insetPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              content: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 184,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Info",
                                      style: TextStyle(
                                        color: Color(0xff313131),
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    AppSized.height15,
                                    Text(
                                      'Are you sure that you want ot delete all your reminds?',
                                      style: TextStyle(
                                        color: Color(0xff404040),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      alertSelected = true;
                                      chooseLeagueText = 'Choose League';
                                    });

                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.tabColor,
                                    fixedSize: const Size(152, 65),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'No Back',
                                    style: TextStyle(
                                      color: Color(0xff474747),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                child: const Text(
                  'Clear all reminds',
                  style: TextStyle(
                    color: AppColors.black1,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(color: AppColors.black1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCategory(index: 0, name: 'Category'),
                      buildRemind(index: 1, name: 'Remind'),
                      buildOptions(index: 2, name: 'Options'),
                    ],
                  ),
                  AppSized.height15,
                  ChooseSportButton(
                    // image: 'assets/images/whiteValeyballBall.png',
                    text: displayedInfo,
                  ),
                ],
              ),
            ),
          ),
          currentIndex == 0
              ? buildAllCategory()
              : currentIndex == 1
                  ? buildAllRemind()
                  : buildAllOptions(),
        ],
      ),
    ));
  }
}
