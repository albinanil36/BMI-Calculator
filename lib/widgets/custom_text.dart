import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.color, this.fontSize, this.fontWeight});

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  // reusable text with a custom font

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
        fontSize: fontSize ?? 16,
        color: color ?? Colors.black,
        fontWeight: fontWeight?? FontWeight.normal,
      ),
    );
  }
}