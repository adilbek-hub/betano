import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseSportButton extends StatefulWidget {
  const ChooseSportButton({
    super.key,
    required this.text,
    this.image,
  });
  final String? image;
  final String text;
  @override
  State<ChooseSportButton> createState() => _ChooseSportButtonState();
}

class _ChooseSportButtonState extends State<ChooseSportButton> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('${widget.image}'),
            const SizedBox(width: 5),
            Text(
              widget.text,
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
