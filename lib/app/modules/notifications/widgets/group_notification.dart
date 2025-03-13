
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupNotification extends StatelessWidget {
  const GroupNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AssetsPath.imagefootballKid),
            radius: 25.r,
          ),
          widthBox12,
          SizedBox(
            height: 50,
              width: 180.w,
              child: Column(
                children: [
                  Text(
                    maxLines: 1,
                    'Celline, Kyedae, Nami and 2 others going to your event.',
                    style: GoogleFonts.notoSansMyanmar(
                        fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 60,
                        decoration: BoxDecoration(
                            color: AppColors.themeColor,
                            borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text('Accept',style: GoogleFonts.notoSansMyanmar(fontSize: 12,color: Colors.white),),),
                      ), widthBox8,
                      Container(
                        height: 24,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.themeColor),
                            borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text('Delete',style: GoogleFonts.notoSansMyanmar(fontSize: 12,color: Colors.black),),),
                      )
                      
                    ],
                  )
                ],
              )),
     
          SizedBox(width: 74.w,),
          Text(
            '1 min ago',
            style: GoogleFonts.notoSansMyanmar(
                fontSize: 12.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
