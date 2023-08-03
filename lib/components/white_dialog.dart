import 'package:betano/constants/app_colors.dart';
import 'package:betano/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteDialog extends StatefulWidget {
  const WhiteDialog({
    super.key,
  });

  @override
  State<WhiteDialog> createState() => _WhiteDialogState();
}

class _WhiteDialogState extends State<WhiteDialog> {
  bool isValeyballVisible = false;
  bool isHandballVisible = false;
  bool isValeyballWomenVisible = false;
  bool isHandballWomenVisible = false;

  void toggleCategoryVisibility() {
    setState(() {
      isValeyballVisible = !isValeyballVisible;
      isHandballVisible = false;
      isValeyballWomenVisible = false;
      isHandballWomenVisible = false;
    });
  }

  void toggleHandballVisibility() {
    setState(() {
      isHandballVisible = !isHandballVisible;
      isValeyballVisible = false;
      isValeyballWomenVisible = false;
      isHandballWomenVisible = false;
    });
  }

  void toggleValeyballWomenVisibility() {
    setState(() {
      isValeyballWomenVisible = !isValeyballWomenVisible;
      isHandballVisible = false;
      isValeyballVisible = false;
      isHandballWomenVisible = false;
    });
  }

  void toggleHandballWomenVisibility() {
    setState(() {
      isHandballWomenVisible = !isHandballWomenVisible;
      isValeyballWomenVisible = false;
      isHandballVisible = false;
      isValeyballVisible = false;
    });
  }

  void showMaterialDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlertDialog(
                backgroundColor: const Color(0xffe7e7e7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                content: Column(
                  children: [
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 35),
                      child: Text(
                        'Choose sport',
                        style: TextStyle(
                          color: Color(0xff313131),
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                          onTap: toggleCategoryVisibility,
                          image: 'assets/images/ballValeyball.png',
                          text1: 'Valeyball',
                          bgColor: !isValeyballVisible
                              ? AppColors.white
                              : AppColors.tabColor,
                        ),
                        ChooseCard(
                          image: 'assets/images/bollHandball.png',
                          text1: 'Handball',
                          bgColor: !isHandballVisible
                              ? AppColors.white
                              : AppColors.tabColor,
                          onTap: toggleHandballVisibility,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChooseCard(
                          image: 'assets/images/ballValeyball.png',
                          text1: 'Valeyball',
                          text2: 'Women',
                          bgColor: !isValeyballWomenVisible
                              ? AppColors.white
                              : AppColors.tabColor,
                          onTap: toggleValeyballWomenVisibility,
                        ),
                        ChooseCard(
                          image: 'assets/images/ballWomenHandball.png',
                          text1: 'Handball',
                          text2: 'Women',
                          bgColor: !isHandballWomenVisible
                              ? AppColors.white
                              : AppColors.tabColor,
                          onTap: toggleHandballWomenVisibility,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Image.asset('assets/images/B_etano.png'),
                    ),
                  ],
                ),
              ),
              AlertDialog(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Center(
                    child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 189,
      height: 36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          backgroundColor: const Color(0xff333333),
        ),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose sport',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChooseCard extends StatefulWidget {
  const ChooseCard({
    super.key,
    required this.image,
    required this.text1,
    this.text2,
    required this.bgColor,
    this.onTap,
  });
  final String image;
  final String text1;
  final String? text2;
  final Color bgColor;
  final void Function()? onTap;

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 136,
      child: InkWell(
        onTap: widget.onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          color: widget.bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.image),
              Text(
                widget.text1,
                style: AppTextStyes.textStyle1,
              ),
              Text(
                widget.text2 ?? '',
                style: AppTextStyes.textStyle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
