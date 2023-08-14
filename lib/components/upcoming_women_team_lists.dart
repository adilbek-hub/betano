import 'package:betano/cubit/betano_cubit.dart';
import 'package:betano/views/duels_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:betano/models/upcoming_completed_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/app_colors.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';

class UpcomingWomenTeamLists extends StatelessWidget {
  const UpcomingWomenTeamLists({
    Key? key,
    required this.upcomingCompletedList,
  }) : super(key: key);
  final List<UpcomingCompleted> upcomingCompletedList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BetanoCubit, List<UpcomingCompleted>>(
      builder: (context, state) {
        return Expanded(
          flex: 4,
          child: ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                final upcomingCompleted = state[index];
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
                              Image.asset(
                                  'assets/images/${upcomingCompleted.alarm}.png')
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
      },
    );
  }
}
