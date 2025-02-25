
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PeopleCardWidget extends StatelessWidget {
  const PeopleCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 8.w),
      child: Container(
        height: 201.h,
        width: 152.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r)),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: Icon(Icons.close),
                )),
            Container(
              height: 113.h,
              width: 133.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetsPath.imagefootballKid)),
               
                  borderRadius: BorderRadius.circular(26.r)),
            ),
            Text(
              'Emily K.',
              style: GoogleFonts.outfit(
                  fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            heightBox4,
            Container(
              height: 26.h,
              width: 132.w,
              decoration: BoxDecoration(
                  color: AppColors.themeColor,
                  borderRadius: BorderRadiusDirectional.circular(12.r)),
              child: Center(
                child: Text(
                  'Follow',
                  style: GoogleFonts.outfit(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}