import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class ChooseCard extends StatefulWidget {
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
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 136,
      child: InkWell(
        onTap: widget.onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          color: widget.bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.image),
              Text(
                widget.text1,
                style: AppTextStyes.textStyle1,
              ),
              Text(
                widget.text2 ?? '',
                style: AppTextStyes.textStyle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
