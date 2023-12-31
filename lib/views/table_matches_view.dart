import 'package:flutter/material.dart';
import 'package:betano/components/table_matches_valeyball_button.dart';
import '../components/head_container.dart';
import '../constants/app_colors.dart';
import '../models/upcoming_completed_valeyball.dart';

class TableView extends StatefulWidget {
  const TableView({
    Key? key,
    required this.upcomingCompletedList,
  }) : super(key: key);
  final List<UpcomingCompletedValleyball> upcomingCompletedList;

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
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
                    TableMatchesValeyballButton(),
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
