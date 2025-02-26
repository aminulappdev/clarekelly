
import 'package:clarekelly/app/modules/notifications/views/notification_screen.dart';
import 'package:clarekelly/app/modules/profile/views/my_progile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageHeader extends StatelessWidget {
   final String title;
   final String imageUrl;
   
  const HomepageHeader({
    super.key, required this.title, required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
   

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MyProfileScreen.routeName);
          },
          child: CircleAvatar(
            radius: 24.r,
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.outfit(
              fontSize: 18, fontWeight: FontWeight.w600),
        ),
        GestureDetector(
           onTap: () {
            Navigator.pushNamed(context, NotificationScreen.routeName);
          },
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications,
              color: Color(0xffFF9957),
            ),
          ),
        ),
      ],
    );
  }
}