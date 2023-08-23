import 'package:flutter/material.dart';
import '../components/head_container.dart';
import '../components/table_matches_handball_button.dart';
import '../constants/app_colors.dart';
import '../models/upcoming_completed_valeyball.dart';

class TableMatchesHandballView extends StatefulWidget {
  const TableMatchesHandballView({
    Key? key,
    required this.upcomingCompletedValeyballList,
  }) : super(key: key);
  final List<UpcomingCompletedValleyball> upcomingCompletedValeyballList;

  @override
  State<TableMatchesHandballView> createState() =>
      _TableMatchesHandballViewState();
}

class _TableMatchesHandballViewState extends State<TableMatchesHandballView> {
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
                    TableMatchesHandballButton(),
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
