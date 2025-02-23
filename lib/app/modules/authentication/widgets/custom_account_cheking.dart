
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAccountCheking extends StatelessWidget {
  final  String name; 
  final  String operationName; 
  final  VoidCallback ontap;
  const CustomAccountCheking({
    super.key, required this.name, required this.operationName, required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: GoogleFonts.outfit(
              fontSize: 16.sp, fontWeight: FontWeight.w400),
        ),
        GestureDetector(
          onTap: ontap,
          child: Text(
            operationName,
            style: GoogleFonts.outfit(
                fontSize: 16.sp, fontWeight: FontWeight.w600,decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}