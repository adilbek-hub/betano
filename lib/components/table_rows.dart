import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class TableRows extends StatelessWidget {
  const TableRows({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Table(
              border: TableBorder.all(
                color: const Color(0xff969696),
              ),
              children: const [
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'W',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Wins',
                      style: AppTextStyes.textStyle1,
                    ),
                  )),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'D',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Draws',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'L',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Loses',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'G+/-',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Goal difference',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'S',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Changes',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'P',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Points',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'PA',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Points against',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'PT',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Points total',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'GT',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Goals Total',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'RFT',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Points for total',
                        style: AppTextStyes.textStyle1,
                      ),
                    ),
                  ),
                ]),
              ]),
        ),
      ],
    );
  }
}
