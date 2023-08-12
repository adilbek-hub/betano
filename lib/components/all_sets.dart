import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/upcoming_completed_model.dart';

class AllSets extends StatelessWidget {
  const AllSets({
    super.key,
    required this.set123List,
  });

  final List<UpcomingCompleted> set123List;

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
                '${set123List[0].num1}',
                style: const TextStyle(
                  color: AppColors.sets,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('${set123List[0].text1}'),
              Text('${set123List[0].num2}'),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
