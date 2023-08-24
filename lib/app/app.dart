import 'package:betano/views/menu_view.dart';
import 'package:flutter/material.dart';

import '../components/upcoming_women_team_lists.dart';

import '../models/upcoming_completed_valeyball.dart';
import '../views/link.dart';
import '../views/table_matches_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':
            (context) => /*MyWidget(
            upcomingCompletedHandballList: upcomingCompletedHandballList),*/
                const Link(),
        /* MenuView(
                  upcomingCompletedList: upcomingCompletedValeyballList,
                ),*/
        '/TableView': (context) => TableView(
              upcomingCompletedList: upcomingCompletedValeyballList,
            ),
        // '/DuelsDetailView': (context) =>  DuelsDetailView(upcomingCompletedItem: upcomingCompleted,),
        '/UpcomingWomenTeamLists': (context) => UpcomingWomenTeamLists(
              upcomingCompletedList: upcomingCompletedValeyballList,
            ),
      },
    );
  }
}
