import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class ChooseCard extends StatelessWidget {
  const ChooseCard({
    super.key,
    required this.image,
    required this.text1,
    this.text2,
    required this.bgColor,
    this.onTap,
  });
  final String image;
  final String text1;
  final String? text2;
  final Color bgColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 136,
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          color: bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(
                text1,
                style: AppTextStyes.textStyle1,
              ),
              Text(
                text2 ?? '',
                style: AppTextStyes.textStyle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
