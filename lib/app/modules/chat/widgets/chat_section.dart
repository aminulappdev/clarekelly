import 'package:clarekelly/app/modules/chat/views/chatting_screen.dart';
import 'package:clarekelly/app/modules/chat/widgets/multiple_photos_aveture.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSection extends StatelessWidget {
  final bool isGroup;
  const ChatSection({
    super.key,
    required this.isGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isGroup
                ? MultiplePhotosAveture()
                : CircleAvatar(
                    backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ChattingScreen.routeName);
              },
              child: SizedBox(
                width: 240.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'name',
                      style: GoogleFonts.outfit(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    Text('Hai, whats’up bro. hayu atuh hangout dei jang Sabrina',
                        style: GoogleFonts.outfit(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            widthBox12,
            Column(
              children: [
                Text('1:20 pm',
                    style: GoogleFonts.outfit(
                        fontSize: 10.sp, fontWeight: FontWeight.w500)),
                heightBox8,
                Icon(Icons.check),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
