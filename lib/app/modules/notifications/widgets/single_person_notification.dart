
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePersionNotification extends StatelessWidget {
  const SinglePersionNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AssetsPath.imagefootballKid),
            radius: 25.r,
          ),
          Stack(
            children: [
              SizedBox(
                height: 60.h,
                width: 80.w,
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 5.w,
                  child: Container(
                    height: 30.h,
                    width: 30.r,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.themeColor),
                        shape: BoxShape.circle,
                        color: AppColors.secondaryBackgroundColor),
                  )),
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 25.w,
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.themeColor),
                        shape: BoxShape.circle,
                        color: AppColors.secondaryBackgroundColor),
                  )),
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 45.w,
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.themeColor),
                        shape: BoxShape.circle,
                        color: AppColors.secondaryBackgroundColor),
                  ))
            ],
          ),
          SizedBox(
              width: 180.w,
              child: Text(
                'Celline, Kyedae, Nami and 2 others going to your event.',
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 14.sp, fontWeight: FontWeight.w400),
              )),
          widthBox8,
          Text(
            '1 min ago',
            style: GoogleFonts.notoSansMyanmar(
                fontSize: 12.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
