import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../models/upcoming_completed_model.dart';
import '../views/duels_detail_view.dart';

class DuelsShowDialog {
  static Future<void> showMyDialog(
      context, UpcomingCompleted upcomingCompleted) async {
    return showDialog(
        context: context,
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                height: 650,
                child: AlertDialog(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  backgroundColor: const Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  insetPadding: const EdgeInsets.only(
                    left: 20,
                    top: 40,
                    right: 20,
                  ),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Duels",
                      style: TextStyle(
                        color: Color(0xff313131),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  content: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  AppSized.height30,
                                  Image.asset(
                                    'assets/images/${upcomingCompleted.image1}.png',
                                  ),
                                  AppSized.height10,
                                  Text('${upcomingCompleted.text1}'),
                                  AppSized.height20,
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum1}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum2}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum3}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum4}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum5}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffd0d0d0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Column(
                                children: [
                                  AppSized.height30,
                                  Image.asset(
                                    'assets/images/${upcomingCompleted.image2}.png',
                                  ),
                                  AppSized.height10,
                                  Text('${upcomingCompleted.text2}'),
                                  AppSized.height20,
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum6}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum7}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum8}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum9}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TeamGoalCard(
                                    height: 49,
                                    width: 128,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppSized.height5,
                                        Text(
                                          '${upcomingCompleted.goalsNum10}',
                                          style: const TextStyle(
                                            color: Color(0xff4CC314),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 19),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.tabColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 40,
                    65,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Ok Go back',
                  style: TextStyle(
                    color: Color(0xff474747),
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        });
  }
}
