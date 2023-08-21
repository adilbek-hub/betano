import 'package:flutter/material.dart';

import 'package:betano/constants/app_colors.dart';
import 'package:betano/constants/app_sized.dart';
import 'package:betano/constants/app_texts.dart';

import '../components/choose_card.dart';
import '../components/custom_button.dart';
import '../components/head_container.dart';
import '../components/table_rows.dart';
import '../constants/app_text_styles.dart';
import '../models/choose_league_model.dart';
import '../utils/choose_league_showdialog.dart';

class OptionView extends StatefulWidget {
  const OptionView({
    Key? key,
    required this.shooseLeagueList,
  }) : super(key: key);
  final List<ChooseLeague> shooseLeagueList;

  @override
  State<OptionView> createState() => _OptionViewState();
}

class _OptionViewState extends State<OptionView> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HeadContainer(),
        Expanded(
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
                                title: const Column(
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
                                content: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
        ),
      ],
    ));
  }
}

class ClearAllRemindsButton extends StatelessWidget {
  const ClearAllRemindsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
                    title: const Column(
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
                    content: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
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
    );
  }
}

class OutLineButton extends StatelessWidget {
  const OutLineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
        ChooseLeagueShowDialog.chooseLeagueDialog(context);
      },
      child: const Text(
        'Choose league',
        style: TextStyle(
          color: AppColors.tabColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class OptionsCard extends StatefulWidget {
  const OptionsCard({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<OptionsCard> createState() => _OptionsCardState();
}

class _OptionsCardState extends State<OptionsCard> {
  Color buttonColor1 = const Color(0xff9b9b9b);
  Color buttonColor2 = const Color(0xff9b9b9b);

  void changeButtonColors(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        buttonColor1 = AppColors.tabColor;
        buttonColor2 = const Color(0xff9b9b9b);
      } else if (buttonNumber == 2) {
        buttonColor1 = const Color(0xff9b9b9b);
        buttonColor2 = AppColors.tabColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            widget.text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              CustomsButton(
                text: 'ON',
                color: buttonColor1,
                onPressed: () {
                  changeButtonColors(1);
                },
              ),
              const SizedBox(width: 10),
              CustomsButton(
                text: 'OFF',
                color: buttonColor2,
                onPressed: () {
                  changeButtonColors(2);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomsButton extends StatelessWidget {
  const CustomsButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(80, 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
