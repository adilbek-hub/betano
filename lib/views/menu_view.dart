import 'package:flutter/material.dart';

import '../components/head_container.dart';
import '../constants/app_colors.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const HeadContainer(),
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
