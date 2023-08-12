import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/upcoming_completed_model.dart';

class Broadcast extends StatelessWidget {
  const Broadcast({
    Key? key,
    required this.broadcastList,
  }) : super(key: key);
  final List<UpcomingCompleted> broadcastList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 550,
      decoration: const BoxDecoration(
        color: Color(0xFF343434),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                '${broadcastList[0].text1}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            for (int i = 1; i < broadcastList.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 19),
                  Text(
                    '${broadcastList[i].text2}',
                    style: const TextStyle(
                      color: AppColors.tabColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${broadcastList[i].text3}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
