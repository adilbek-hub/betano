import 'package:flutter/material.dart';

import '../components/head_container.dart';
import '../constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const HeadContainer(),
          Expanded(
            flex: 3,
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
