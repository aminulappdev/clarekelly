
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CostumTitleRow extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const CostumTitleRow({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              GoogleFonts.notoSansMyanmar(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
        GestureDetector(
          onTap: ontap,
          child: Text(
            'See All',
            style: GoogleFonts.notoSansMyanmar(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
