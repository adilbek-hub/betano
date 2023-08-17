import 'package:flutter/material.dart';

import '../components/head_container.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/upcoming_completed_model.dart';
import '../utils/clear_all_show_dialog.dart';
import 'duels_detail_view.dart';

class RemindView extends StatefulWidget {
  const RemindView({
    Key? key,
    required this.upcomingCompletedList,
  }) : super(key: key);
  final List<UpcomingCompleted> upcomingCompletedList;

  @override
  State<RemindView> createState() => _RemindViewState();
}

class _RemindViewState extends State<RemindView> {
  bool allCleared = false;
  void cleanAll() {
    setState(() {
      upcomingCompletedList.clear();
      allCleared = true;
    });
  }

  void removeItem(int index) {
    setState(() {
      widget.upcomingCompletedList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const HeadContainer(),
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
            ///////////
            Expanded(
              flex: 4,
              child: ListView.builder(
                  itemCount: upcomingCompletedList.length,
                  itemBuilder: (context, index) {
                    final upcomingCompleted = upcomingCompletedList[index];
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
      ),
    );
  }
}
