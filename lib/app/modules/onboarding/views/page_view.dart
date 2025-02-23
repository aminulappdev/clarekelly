import 'package:clarekelly/app/modules/authentication/views/auth_scree.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_richText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final bool showWelcomeText;
  final double imageHeight;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.showWelcomeText,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   height: 30.h,
          //   width: 60.w,
          //   decoration: BoxDecoration(
          //     color: Colors.transparent,
          //     border: Border.all(color: Colors.black),
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: Center(
          //     child: Text('Skip'),
          //   ),
          // ),

          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, AuthScreen.routeName);
              },
              child: Text(
                'Skip',
                style: GoogleFonts.outfit(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          heightBox30,
          SvgPicture.asset(
            image,
            height: imageHeight,
            fit: BoxFit.fill,
          ),
          heightBox24,
          Visibility(
            visible: showWelcomeText,
            replacement: Container(),
            child: CustomRichText(
              mainText: 'Welcome to',
              mainTextColor: Colors.black,
              mainTextFontWeight: FontWeight.w500,
              mainTextSize: 20,
              richText: '"WinWhen"',
              richTextSize: 20,
              richTextFontWeight: FontWeight.w700,
              richTextColor: Colors.black,
            ),
          ),
          heightBox20,
          Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          heightBox20,
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
