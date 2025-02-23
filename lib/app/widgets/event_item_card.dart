
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_comment_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItemCard extends StatelessWidget {
  const EventItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 338,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 13.r,
                  backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                ),
                widthBox4,
                Text(
                  'Md Aminul',
                  style: GoogleFonts.outfit(fontSize: 12),
                )
              ],
            ),
            heightBox4,
            Container(
              height: 131.h,
              width: 155.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(AssetsPath.imagefootballKid),
                    fit: BoxFit.fill),
              ),
            ),
            heightBox4,
            Text(
              'Julia’s Football Match!',
              style: GoogleFonts.outfit(
                  fontSize: 12, fontWeight: FontWeight.w700),
            ),
            heightBox8,
            Text(
              '31st Dec 2025 • 04:00 PM',
              style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.themeColor),
            ),
            heightBox8,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: AppColors.themeColor,
                ),
                Text(
                  'Julia’s Football Match!',
                  style: GoogleFonts.outfit(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5D5D5D)),
                ),
              ],
            ),
            heightBox8,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 14,
                    )),
                Text(
                  'Going',
                  style: GoogleFonts.outfit(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5D5D5D)),
                ),
                widthBox4,
                CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 14,
                    )),
                Text(
                  'Not intersted',
                  style: GoogleFonts.outfit(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5D5D5D)),
                ),
              ],
            ),
            heightBox4,
            CommentInputField()
          ],
        ),
      ),
    );
  }
}
