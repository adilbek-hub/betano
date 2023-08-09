import 'package:flutter/material.dart';

import 'package:betano/constants/app_colors.dart';

import '../constants/app_sized.dart';

class MatchesBody extends StatefulWidget {
  const MatchesBody({super.key});

  @override
  State<MatchesBody> createState() => _MatchesBodyState();
}

class _MatchesBodyState extends State<MatchesBody> {
  Color button1Color = AppColors.upcomingCompleted;
  Color button2Color = AppColors.upcomingCompleted;
  Color buttonTextColor = AppColors.white;
  Color unButtonTextColor = AppColors.white;
  bool inTab = false;
  void onTab() {
    if (button1Color == AppColors.upcomingCompleted ||
        buttonTextColor == AppColors.white) {
      setState(() {
        button1Color = AppColors.tabColor;
        button2Color = AppColors.upcomingCompleted;
        buttonTextColor = AppColors.black1;
        unButtonTextColor = AppColors.white;
      });
    } else if (button2Color == AppColors.upcomingCompleted ||
        unButtonTextColor == AppColors.white) {
      setState(() {
        button2Color = AppColors.tabColor;
        button1Color = AppColors.upcomingCompleted;
        unButtonTextColor = AppColors.black1;
        buttonTextColor = AppColors.white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSized.height25,
        Container(
          width: 212,
          decoration: BoxDecoration(
            color: AppColors.upcomingCompleted,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UpcomingCompletedButton(
                    backgroundColor: button1Color,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    text: 'Upcoming',
                    style: TextStyle(
                      color: buttonTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onPressed: () {
                      onTab();
                    },
                  ),
                  UpcomingCompletedButton(
                    backgroundColor: button2Color,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    text: 'Completed',
                    style: TextStyle(
                      color: unButtonTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    onPressed: () {
                      onTab();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UpcomingCompletedButton extends StatelessWidget {
  const UpcomingCompletedButton({
    Key? key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    required this.style,
    required this.borderRadius,
  }) : super(key: key);
  final Color backgroundColor;
  final void Function() onPressed;
  final String text;
  final TextStyle style;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 48),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: style),
    );
  }
}
