import 'package:betano/models/upcoming_completed_handball.dart';
import 'package:betano/models/upcoming_completed_valeyball.dart';
import 'package:flutter/material.dart';

import 'components/all_sets.dart';
import 'components/broadcast.dart';
import 'components/detail_valeyball_women_place.dart';
import 'components/in_completed_teams_goals.dart';
import 'components/to_back.dart';
import 'constants/app_sized.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({
    Key? key,
    required this.upcomingCompletedHandballList,
    // required this.set123List,
    // required this.detailWomenValeyballPlaceList,
  }) : super(key: key);
  final List<UpcomingCompletedHandball> upcomingCompletedHandballList;
  // final List<UpcomingCompleted> set123List;
  // final List<UpcomingCompleted> detailWomenValeyballPlaceList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/handball.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const ToBack(),
                    InCompletedTeamsGoals(
                        upcomingCompletedValeyballList:
                            upcomingCompletedValeyballList[0]),
                    AppSized.height20,
                    DetailsValleyballWomenPlace(),
                  ],
                ),
              ),
              Image.asset('assets/images/area.png'),
              for (UpcomingCompletedValleyball sets in set123ValeyballList)
                AllSets(set123List: [sets]),
              Broadcast(
                broadcastList: broadcastValeyballList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
