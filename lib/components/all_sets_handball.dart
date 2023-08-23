import 'package:betano/models/upcoming_completed_handball.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AllHandballSets extends StatelessWidget {
  const AllHandballSets({
    super.key,
    required this.set123HandballList,
  });

  final List<UpcomingCompletedHandball> set123HandballList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${set123HandballList[0].num1}',
                style: const TextStyle(
                  color: AppColors.sets,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('${set123HandballList[0].text1}'),
              Text('${set123HandballList[0].num2}'),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
