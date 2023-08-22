import 'package:betano/constants/app_text_styles.dart';
import 'package:betano/models/upcoming_completed_valeyball.dart';
import 'package:flutter/material.dart';

class DetailsValleyballWomenPlace extends StatelessWidget {
  DetailsValleyballWomenPlace({
    super.key,
  });

  final List<UpcomingCompletedValleyball> detailWomenValeyballPlace =
      detailWomenValeyballPlaceList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 4),
          ),
          itemCount: detailWomenValeyballPlace.length,
          itemBuilder: (BuildContext context, int index) {
            final detailWomenValeyballPlaceList =
                detailWomenValeyballPlace[index];
            return Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color(0xff828282),
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${detailWomenValeyballPlaceList.text3}',
                        style: AppTextStyes.detail,
                      ),
                      Text(
                        '${detailWomenValeyballPlaceList.text4}',
                        style: AppTextStyes.detail2,
                      ),
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
