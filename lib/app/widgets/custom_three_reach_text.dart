import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThreeRichText extends StatelessWidget {
  final String mainText;
  final double mainTextSize;
  final Color mainTextColor;
  final FontWeight mainTextFontWeight;

  final String richText;
  final double richTextSize;
  final Color richTextColor;
  final FontWeight richTextFontWeight;

  final String secondRichText;
  final double secondRichTextSize;
  final Color secondRichTextColor;
  final FontWeight secondRichTextFontWeight;

  const CustomThreeRichText({
    super.key,
    required this.mainText,
    required this.mainTextSize,
    required this.mainTextColor,
    required this.mainTextFontWeight,
    required this.richText,
    required this.richTextSize,
    required this.richTextColor,
    required this.richTextFontWeight,
    required this.secondRichText,
    required this.secondRichTextSize,
    required this.secondRichTextColor,
    required this.secondRichTextFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: mainText,
        style: GoogleFonts.outfit(
            fontSize: mainTextSize.sp,
            fontWeight: mainTextFontWeight,
            color: mainTextColor),
        children: [
          TextSpan(
            text: richText,
            style: GoogleFonts.outfit(
                fontSize: richTextSize.sp,
                fontWeight: richTextFontWeight,
                color: richTextColor),
          ),
          TextSpan(
            text: secondRichText,
            style: GoogleFonts.outfit(
                fontSize: secondRichTextSize.sp,
                fontWeight: secondRichTextFontWeight,
                color: secondRichTextColor),
          ),
        ],
      ),
    );
  }
}
