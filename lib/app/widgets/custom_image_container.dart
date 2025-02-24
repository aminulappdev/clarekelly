import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageContainer extends StatelessWidget {
  final double cHeight;
  final double cWidth;
  final String imagePath;
  const CustomImageContainer({
    super.key, required this.cHeight, required this.cWidth, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cHeight.h,
      width: cWidth.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill),
      ),
    );
  }
}