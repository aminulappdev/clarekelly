import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowingScreen extends StatelessWidget {
  static const String routeName = '/following-screen';
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
         
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25.h,
                    backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                  ),
                  widthBox8,
                  Text(
                    'Aminul',
                    style: GoogleFonts.notoSansMyanmar(
                        fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Container(
                height: 34.h,
                width: 103.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    'Message',
                    style: GoogleFonts.notoSansMyanmar(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
