import 'package:betano/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteDialog extends StatelessWidget {
  const WhiteDialog({
    super.key,
  });

  void showMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          final width = MediaQuery.of(context).size.width;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width / 1.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffE7E7E7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Choose sport',
                          style: TextStyle(
                            color: Color(0xff313131),
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ChooseCard(),
                          ChooseCard(),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ChooseCard(),
                          ChooseCard(),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
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
        });
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
        onPressed: () => showMaterialDialog(context),
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

class ChooseCard extends StatelessWidget {
  const ChooseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 136,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
