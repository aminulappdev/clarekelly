
import 'package:clarekelly/app/modules/events/views/event_datails_screen.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_comment_field_widget.dart';
import 'package:clarekelly/app/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FullEventItemCard extends StatelessWidget {
  const FullEventItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EventDatailsScreen.routeName);
      },
      child: Container(
        height: 312,
        width: MediaQuery.of(context).size.width,
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
                    style: GoogleFonts.outfit(fontSize: 12.sp),
                  )
                ],
              ),
              heightBox4,
             CustomImageContainer(cHeight: 131.0, cWidth: 348.0, imagePath: AssetsPath.imagefootballKid,),
              heightBox4,
              Text(
                'Julia’s Football Match!',
                style: GoogleFonts.outfit(
                    fontSize: 12, fontWeight: FontWeight.w700),
              ),
              heightBox4,
              Text(
                '31st Dec 2025 • 04:00 PM',
                style: GoogleFonts.outfit(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeColor),
              ),
              heightBox4,
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
              heightBox4,
              
              heightBox4,
              CommentInputField(cHeight: 44,)
            ],
          ),
        ),
      ),
    );
  }
}
