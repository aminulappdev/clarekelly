import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PeoplesScreen extends StatefulWidget {
  static const String routeName = '/people-screen';
  const PeoplesScreen({super.key});

  @override
  State<PeoplesScreen> createState() => _PeoplesScreenState();
}

class _PeoplesScreenState extends State<PeoplesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: CustomAppBar(title: 'People You May Know'),
      body: ListView.builder(
        itemCount: 20,
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
                Row(
                  children: [
                    Container(
                      height: 34.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: AppColors.themeColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Center(
                        child: Text(
                          'Add friend',
                          style: GoogleFonts.notoSansMyanmar(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Checkbox(value: false, onChanged: (value) {
                      
                    },)
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
