import 'package:betano/components/upcoming_women_team_lists.dart';
import 'package:flutter/material.dart';
import '../components/clear_all_button.dart';
import '../components/head_container.dart';
import '../models/upcoming_completed_model.dart';

class RemindView extends StatelessWidget {
  const RemindView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const HeadContainer(),
            const ClearAllButton(),
            UpcomingWomenTeamLists(upcomingCompletedList: upcomingCompletedList)
          ],
        ),
      ),
    );
  }
}
