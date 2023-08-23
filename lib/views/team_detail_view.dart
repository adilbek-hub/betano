import 'package:flutter/material.dart';
import '../components/all_sets.dart';
import '../components/broadcast.dart';
import '../components/detail_valeyball_women_place.dart';
import '../components/in_completed_teams_goals.dart';
import '../components/to_back.dart';
import '../constants/app_sized.dart';
import '../models/upcoming_completed_valeyball.dart';

class TeamDetailView extends StatelessWidget {
  const TeamDetailView({
    Key? key,
    required this.upcomingCompletedItem,
    required this.set123List,
    required this.detailWomenValeyballPlaceList,
  }) : super(key: key);
  final UpcomingCompletedValleyball upcomingCompletedItem;
  final List<UpcomingCompletedValleyball> set123List;
  final List<UpcomingCompletedValleyball> detailWomenValeyballPlaceList;

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
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const ToBack(),
                    InCompletedTeamsGoals(
                        upcomingCompletedValeyballList: upcomingCompletedItem),
                    AppSized.height20,
                    DetailsValleyballWomenPlace(),
                  ],
                ),
              ),
              for (UpcomingCompletedValleyball sets in set123List)
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
