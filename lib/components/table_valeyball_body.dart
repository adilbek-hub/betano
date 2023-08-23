import 'package:betano/utils/app_showsdialog.dart';
import 'package:flutter/material.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/choose_league_model.dart';
import '../models/league_women.dart';
import 'league2womenList.dart';

class TableValeyballBody extends StatefulWidget {
  const TableValeyballBody({
    super.key,
  });

  @override
  State<TableValeyballBody> createState() => _TableValeyballBodyState();
}

class _TableValeyballBodyState extends State<TableValeyballBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppSized.height15,
          Image.asset('assets/images/bigPLBack.png'),
          AppSized.height5,
          const Text(
            'League 2. Women',
            style: AppTextStyes.leaque2Style,
          ),
          // AppSized.height5,
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () => AppShowDialogs.showMyDialog(context),
                child: Image.asset('assets/images/i.png'),
              ),
            ),
          ),
          const Divider(
            endIndent: 10,
            indent: 10,
            thickness: 1,
          ),
          AppSized.height5,
          CustomWidget(
            shooseLeague: shooseLeagueList,
            aList: leagueWomenList,
          ),
        ],
      ),
    );
  }
}
