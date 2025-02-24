
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const CustomTitle({
    super.key, required this.title, required this.subtitle, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      child: Row(
        children: [
          Container(
              height: 48.h,
              width: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color.fromARGB(201, 163, 190, 190)),
              child: Icon(icon,size: 30.h,color: AppColors.themeColor,),),
              widthBox8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: GoogleFonts.outfit(
          fontSize: 18.sp, fontWeight: FontWeight.w700),),
          Text(subtitle,style: GoogleFonts.outfit(
          fontSize: 18.sp, fontWeight: FontWeight.w400,color: Color(0xff5D5D5D)),),
                ],
              )
        ],
      ),
    );
  }
}
