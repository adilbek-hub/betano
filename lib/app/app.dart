import 'package:betano/views/menu_view.dart';
import 'package:flutter/material.dart';

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
        '/': (context) => const MenuView(),
        '/TableView': (context) => const TableView(),
      },
    );
  }
}
