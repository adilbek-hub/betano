import 'package:flutter/material.dart';

import '../components/head_container.dart';
import '../constants/app_colors.dart';
import '../constants/app_colors.dart';

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HeadContainer(),
            TableMatches(),
          ],
        ),
      ),
    );
  }
}

class TableMatches extends StatefulWidget {
  const TableMatches({
    super.key,
  });

  @override
  State<TableMatches> createState() => _TableMatchesState();
}

class _TableMatchesState extends State<TableMatches> {
  Color button1Color = AppColors.white;
  Color button2Color = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: button1Color),
                  onPressed: () {
                    setState(() {
                      button1Color = AppColors.tabColor;
                      button2Color = AppColors.white;
                    });
                  },
                  child: const Text('Table'),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: button2Color),
                  onPressed: () {
                    setState(() {
                      button1Color = AppColors.white;
                      button2Color = AppColors.tabColor;
                    });
                  },
                  child: const Text('Matches'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
