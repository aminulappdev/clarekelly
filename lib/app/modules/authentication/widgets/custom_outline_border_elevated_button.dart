import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOutlineBorderElevatedButton extends StatelessWidget {
  final String name;
  final VoidCallback ontap;
  const CustomOutlineBorderElevatedButton({
    super.key,
    required this.name,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.themeColor, width: 1.5)),
        child: Center(
          child: Text(
            name,
            style:
                GoogleFonts.outfit(fontSize: 22.sp, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
