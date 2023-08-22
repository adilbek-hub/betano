import 'package:betano/example.dart';
import 'package:betano/models/upcoming_completed_handball.dart';
import 'package:betano/views/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/upcoming_women_team_lists.dart';
import '../cubit/betano_cubit.dart';

import '../models/upcoming_completed_valeyball.dart';
import '../views/table_matches_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BetanoCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyWidget(
              upcomingCompletedHandballList: upcomingCompletedHandballList),
          /*MenuView(
                upcomingCompletedList: upcomingCompletedValeyballList,
              ),*/
          '/TableView': (context) => const TableView(),
          // '/DuelsDetailView': (context) =>  DuelsDetailView(upcomingCompletedItem: upcomingCompleted,),
          '/UpcomingWomenTeamLists': (context) => UpcomingWomenTeamLists(
                upcomingCompletedList: upcomingCompletedValeyballList,
              ),
        },
      ),
    );
  }
}
