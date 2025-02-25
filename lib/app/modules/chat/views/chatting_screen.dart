import 'package:clarekelly/app/modules/chat/widgets/chatting_field.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChattingScreen extends StatefulWidget {
  static const String routeName = '/chat-screen';

  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  final List<Map<String, dynamic>> messageList = [
    {
      "text": "I have some loads, can you transfer them to Dhaka safely?",
      "isSent": true
    },
    {"text": "Oh it’s okay.", "isSent": false},
    {"text": "Next time, we will meet again", "isSent": true},
    {"text": "Oh it’s okay i like it too babe", "isSent": false},
    {"text": "Okay see you soon very soon", "isSent": true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(AssetsPath.imagefootballKid),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Jhon Doe",
                    style: GoogleFonts.outfit(
                        fontSize: 16.sp, fontWeight: FontWeight.w500)),
                Text("Online",
                    style: GoogleFonts.outfit(
                        fontSize: 12.sp, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.r),
              itemCount: messageList.length,
              itemBuilder: (context, index) {
                final message = messageList[index];
                return Align(
                  alignment: message['isSent']
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: message['isSent']
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: message['isSent']
                              ? AppColors.themeColor
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r),
                              topLeft: Radius.circular(16.r)),
                        ),
                        child: Text(
                          message['text'],
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      message['isSent'] ? Text('seen') : Container()
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 70.h,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                    width: 300,
                    child: ChattingFieldWidget(hintText: 'Type something..')),
                widthBox8,
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Icon(Icons.send),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
