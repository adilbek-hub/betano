import 'package:flutter/material.dart';

import 'package:betano/constants/app_colors.dart';
import 'package:betano/constants/app_sized.dart';

import '../components/custom_button.dart';
import '../components/head_container.dart';

class OptionView extends StatefulWidget {
  const OptionView({super.key});

  @override
  State<OptionView> createState() => _OptionViewState();
}

class _OptionViewState extends State<OptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HeadContainer(),
        Expanded(
          flex: 4,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionsCard(
                  text: 'Sound',
                ),
                OptionsCard(
                  text: 'Calendar \nsynchronization',
                ),
                OptionsCard(
                  text: 'Notifications',
                ),
                Column(
                  children: [
                    Text(
                      'Starting League',
                      style: TextStyle(
                        color: Color(0xff030303),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppSized.height15,
                    OutLineButton(),
                  ],
                ),
                ClearAllRemindsButton(),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class ClearAllRemindsButton extends StatelessWidget {
  const ClearAllRemindsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.tabColor,
        fixedSize: const Size(320, 48),
        side: const BorderSide(
          color: AppColors.tabColor,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Clear all reminds',
        style: TextStyle(
          color: AppColors.black1,
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class OutLineButton extends StatelessWidget {
  const OutLineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(320, 48),
        side: const BorderSide(
          color: AppColors.tabColor,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Choose league',
        style: TextStyle(
          color: AppColors.tabColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              OnOffButton(text: 'ON', color: AppColors.tabColor),
              SizedBox(width: 10),
              OnOffButton(text: 'OFF', color: AppColors.black2),
            ],
          ),
        ),
      ],
    );
  }
}

class OnOffButton extends StatelessWidget {
  const OnOffButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
