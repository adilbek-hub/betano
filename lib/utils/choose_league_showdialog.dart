import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../models/choose_league_model.dart';

List<ChooseLeague> shooseLeague = shooseLeagueList;

class ChooseLeagueShowDialog {
  static void chooseLeagueDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 660,
              child: AlertDialog(
                backgroundColor: const Color(0xffe7e7e7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                content: Column(
                  children: [
                    Row(children: [
                      SizedBox(
                        width: 23,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 17,
                          ),
                          color: AppColors.tabColor,
                        ),
                      ),
                      const Text(
                        'Back',
                        style: AppTextStyes.backTextStyle,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Choose League',
                          style: AppTextStyes.leagueTextStyle,
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 270,
                      height: 456,
                      child: ListView.builder(
                          itemCount: shooseLeague.length,
                          itemBuilder: (context, index) {
                            final choose = shooseLeague[index];
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: InkWell(
                                onTap: () {},
                                child: Card(
                                  child: ListTile(
                                    leading: Image.asset(
                                        'assets/images/${choose.image}.png'),
                                    title: Text(choose.text),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
