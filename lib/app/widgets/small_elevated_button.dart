import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallElevatedButton extends StatelessWidget {
  final String name;
  final Color textColor;
  final Color bgColor;
  final String pageName;
  const SmallElevatedButton({
    super.key, required this.name, required this.textColor, required this.bgColor, required this.pageName, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pageName);
      },
      child: Container(
        height: 36,
        width: 100,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.notoSansMyanmar(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: textColor),
          ),
        ),
      ),
    );
  }
}