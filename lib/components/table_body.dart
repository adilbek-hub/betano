import 'package:betano/utils/app_showsdialog.dart';
import 'package:flutter/material.dart';
import '../constants/app_sized.dart';
import '../constants/app_text_styles.dart';
import '../models/choose_league_model.dart';
import '../models/league_women.dart';
import 'league2womenList.dart';

class TableBody extends StatefulWidget {
  const TableBody({
    super.key,
  });

  @override
  State<TableBody> createState() => _TableBodyState();
}

class _TableBodyState extends State<TableBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppSized.height25,
          Image.asset('assets/images/bigPLBack.png'),
          AppSized.height25,
          const Text(
            'League 2. Women',
            style: AppTextStyes.leaque2Style,
          ),
          AppSized.height5,
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
          AppSized.height10,
          CustomWidget(
            shooseLeague: shooseLeagueList,
            aList: leagueWomenList,
          ),
        ],
      ),
    );
  }
}
