import 'package:clarekelly/app/modules/chat/views/add_memeber_group_screen.dart';
import 'package:clarekelly/app/modules/chat/widgets/chat_section.dart';
import 'package:clarekelly/app/modules/chat/widgets/user_cirle_icon.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatDashboardScreen extends StatefulWidget {
  const ChatDashboardScreen({super.key});

  @override
  State<ChatDashboardScreen> createState() => _ChatDashboardScreenState();
}

class _ChatDashboardScreenState extends State<ChatDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chats',
                  style: GoogleFonts.outfit(
                      fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AddMembersGroupScreen.routeName);
                  },
                  child: Icon(Icons.edit_note ,size: 28,)),
              ],
            ),
            heightBox12,
            SearchBarWidget(
              hintText: 'Search message...',
              isSuffixIcon: false,
            ),
            heightBox8,
            Text(
              'People you know',
              style: GoogleFonts.outfit(
                  fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            UserActivitiesCircleIcon(
              imagePath: AssetsPath.imagefootballKid,
              isActive: true,
            ),
            heightBox8,
            Text(
              'Messages',
              style: GoogleFonts.outfit(
                  fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            heightBox4,
            SizedBox(
              height: 520.h,
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: 10,
                itemBuilder: (contex,index) {
                  return ChatSection(isGroup: false,);
                }
              ),
            )


          ],
        ),
      )),
    );
  }
}
