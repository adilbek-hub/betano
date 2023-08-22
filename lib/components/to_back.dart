import 'package:flutter/material.dart';

import '../models/upcoming_completed_model.dart';
import '../views/menu_view.dart';

class ToBack extends StatelessWidget {
  const ToBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MenuView(
                    upcomingCompletedList: upcomingCompletedList,
                  );
                },
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
        ),
        const Text(
          'Back',
          style: TextStyle(
            color: Color(0xff2d2d2d),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
