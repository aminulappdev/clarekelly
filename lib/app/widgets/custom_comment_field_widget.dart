import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentInputField extends StatelessWidget {
  final double cHeight;
  const CommentInputField({super.key, required this.cHeight});
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        height: cHeight.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey) ,
              borderRadius: BorderRadius.circular(30.r)
            ),
            hintText: "Write comment...",
            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 14.sp),
            prefixIcon: Padding(
              padding:  EdgeInsets.all(6.r),
              child: CircleAvatar(
                
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"), // Replace with actual image
                radius: 10.r,
              ),
            ),
            border: InputBorder.none,
            contentPadding:  EdgeInsets.symmetric(vertical: 14.h),
          ),
        ),
      ),
    );
  }
}
