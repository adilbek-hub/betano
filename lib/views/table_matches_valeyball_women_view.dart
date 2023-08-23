import 'package:flutter/material.dart';
import '../components/head_container.dart';
import '../components/table_matches_valeyball_women_button.dart';
import '../constants/app_colors.dart';
import '../models/upcoming_completed_valeyball.dart';

class TableMatchesValeyballWomenView extends StatefulWidget {
  const TableMatchesValeyballWomenView({
    Key? key,
    required this.upcomingCompletedValeyballList,
  }) : super(key: key);
  final List<UpcomingCompletedValleyball> upcomingCompletedValeyballList;

  @override
  State<TableMatchesValeyballWomenView> createState() =>
      _TableMatchesValeyballWomenViewState();
}

class _TableMatchesValeyballWomenViewState
    extends State<TableMatchesValeyballWomenView> {
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeadContainer(),
                    TableMatchesValeyballWomenButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
