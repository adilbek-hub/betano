import 'package:betano/components/table_matches_button.dart';
import 'package:flutter/material.dart';
import '../components/head_container.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HeadContainer(),
            TableMatchesButton(),
          ],
        ),
      ),
    );
  }
}
