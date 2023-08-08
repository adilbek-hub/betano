import 'package:betano/constants/app_sized.dart';
import 'package:flutter/material.dart';

import 'package:betano/constants/app_text_styles.dart';

import '../models/choose_league_model.dart';
import '../models/league_women.dart';
import 'add_remove_button.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({
    Key? key,
    required this.shooseLeague,
    required this.aList,
  }) : super(key: key);
  final List<ChooseLeague> shooseLeague;
  final List<LeagueWomen> aList;

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  bool showClub = true;

  void toggleTextVisibility() {
    setState(() {
      showClub = !showClub;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        !showClub
                            ? AddRemoveIconButton(
                                icon: Icons.add,
                                onPressed: toggleTextVisibility,
                              )
                            : AddRemoveIconButton(
                                icon: Icons.remove,
                                onPressed: toggleTextVisibility,
                              ),
                        AppSized.width5,
                        const Text(
                          'CLUB',
                          style: AppTextStyes.wdlpStyle,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text('W', style: AppTextStyes.wdlpStyle),
                        AppSized.width35,
                        Text('D', style: AppTextStyes.wdlpStyle),
                        AppSized.width35,
                        Text('L', style: AppTextStyes.wdlpStyle),
                        AppSized.width35,
                        Text('P', style: AppTextStyes.wdlpStyle),
                        AppSized.width35,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              itemCount: leagueWomenList.length,
              itemBuilder: (context, index) {
                final leagueWomen = leagueWomenList[index];
                return Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                                'assets/images/${leagueWomen.icon}.png'),
                            const SizedBox(width: 5),
                            Text(
                              leagueWomen.text,
                              style: AppTextStyes.wdlpTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${leagueWomen.wNum}',
                              style: AppTextStyes.wdlpTextStyle,
                            ),
                            const SizedBox(width: 35),
                            Text(
                              '${leagueWomen.wNum}',
                              style: AppTextStyes.wdlpTextStyle,
                            ),
                            SizedBox(width: 35),
                            Text(
                              '${leagueWomen.dNum}',
                              style: AppTextStyes.wdlpTextStyle,
                            ),
                            SizedBox(width: 35),
                            Text(
                              '${leagueWomen.lNum}',
                              style: AppTextStyes.wdlpTextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}




/*class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // _CustomIcon(
        //   icon: Icons.plus_one,
        //   images: [
        //     'plYellow',
        //     'plYellow',
        //     'plYellow',
        //     'plYellow',
        //     'plYellow',
        //     'plYellow',
        //     'plYellow',
        //   ],
        // ),
        SizedBox(width: 10),
        _CustomTextColumn(
          icon: Icons.add,
          images: ['assets/images/plYellow'],
          letter: 'A',
          texts: [
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
          ],
        ),
        SizedBox(width: 10),
        _CustomTextColumn(
          icon: Icons.add,
          images: ['assets/images/plYellow'],
          letter: 'B',
          texts: [
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
          ],
        ),
        SizedBox(width: 10),
        _CustomTextColumn(
          icon: Icons.add,
          images: ['assets/images/plYellow'],
          letter: 'A',
          texts: [
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
          ],
        ),
      ],
    );
  }
}

// class _CustomIcon extends StatelessWidget {
//   const _CustomIcon({
//     required this.icon,
//     required this.images,
//   });
//   final IconData icon;
//   final List<String> images;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(icon),
//         const SizedBox(height: 5),
//         Expanded(
//           child: ListView.builder(
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               return Image.asset('${images[index]}');
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

class _CustomTextColumn extends StatelessWidget {
  final String letter;
  final List<String> texts;
  final IconData icon;
  final List<String> images;

  const _CustomTextColumn({
    required this.letter,
    required this.texts,
    required this.icon,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(letter,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 5),
        SizedBox(
          height: 300,
          width: 120,
          child: ListView.builder(
            itemCount: texts.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Image.asset('${images[index]}.png'),
                  Text(
                    texts[index],
                  ),
                ],
              );
              
            },
          ),
        ),
      ],
    );
  }
}
*/