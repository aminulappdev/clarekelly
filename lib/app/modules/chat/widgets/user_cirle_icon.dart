import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserActivitiesCircleIcon extends StatelessWidget {
  final String imagePath;
  final bool isActive;
  const UserActivitiesCircleIcon({
    super.key,
    required this.imagePath,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 0.5.w),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(imagePath),
                      backgroundColor: AppColors.themeColor,
                      radius: 30.r,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 8.r,
                      backgroundColor:
                          isActive ? Color(0xff00FF90) : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
