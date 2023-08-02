import 'package:betano/components/white_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

import 'choice_in_head_container.dart';

class HeadContainer extends StatefulWidget {
  const HeadContainer({
    super.key,
  });

  @override
  State<HeadContainer> createState() => _HeadContainerState();
}

class _HeadContainerState extends State<HeadContainer> {
  bool isCategoryVisible = false;
  bool isRemindVisible = false;
  bool isOptionsVisible = false;

  void toggleCategoryVisibility() {
    setState(() {
      isCategoryVisible = !isCategoryVisible;
      isRemindVisible = false;
      isOptionsVisible = false;
    });
  }

  void toggleRemindVisibility() {
    setState(() {
      isRemindVisible = !isRemindVisible;
      isCategoryVisible = false;
      isOptionsVisible = false;
    });
  }

  void toggleOptionsVisibility() {
    setState(() {
      isOptionsVisible = !isOptionsVisible;
      isCategoryVisible = false;
      isRemindVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.black,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceInHeadContainer(
                    bgColor:
                        !isCategoryVisible ? Colors.transparent : Colors.orange,
                    borderColor:
                        !isCategoryVisible ? Colors.white : Colors.orange,
                    text: 'Category',
                    style: GoogleFonts.roboto(
                      color: !isCategoryVisible ? Colors.white : Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onTap: toggleCategoryVisibility,
                  ),
                  ChoiceInHeadContainer(
                    bgColor:
                        !isRemindVisible ? Colors.transparent : Colors.orange,
                    borderColor:
                        !isRemindVisible ? Colors.white : Colors.orange,
                    text: 'Remind',
                    style: GoogleFonts.roboto(
                      color: !isRemindVisible ? Colors.white : Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onTap: toggleRemindVisibility,
                  ),
                  ChoiceInHeadContainer(
                    bgColor:
                        !isOptionsVisible ? Colors.transparent : Colors.orange,
                    borderColor:
                        !isOptionsVisible ? Colors.white : Colors.orange,
                    text: 'Options',
                    style: GoogleFonts.roboto(
                      color: !isOptionsVisible ? Colors.white : Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onTap: toggleOptionsVisibility,
                  ),
                ],
              ),
              const WhiteDialog(),
            ],
          ),
        ),
      ),
    );
  }
}
