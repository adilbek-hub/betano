import 'package:betano/views/duels_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:betano/models/upcoming_completed_model.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';

class UpcomingWomenTeamLists extends StatefulWidget {
  const UpcomingWomenTeamLists({
    Key? key,
    required this.upcomingCompletedList,
  }) : super(key: key);
  final List<UpcomingCompleted> upcomingCompletedList;

  @override
  State<UpcomingWomenTeamLists> createState() => _UpcomingWomenTeamListsState();
}

class _UpcomingWomenTeamListsState extends State<UpcomingWomenTeamLists> {
  List<UpcomingCompleted> currentList = [];

  @override
  void initState() {
    super.initState();
    currentList = widget.upcomingCompletedList;
  }

  void removeItem(int index) {
    setState(() {
      if (index >= 0 && index < currentList.length) {
        currentList.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListView.builder(
          itemCount: currentList.length,
          itemBuilder: (context, index) {
            final upcomingCompleted = currentList[index];
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
                                'assets/images/${upcomingCompleted.alarm}.png'),
                          )
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
            );
          }),
    );
  }
}
