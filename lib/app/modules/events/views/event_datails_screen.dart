import 'package:clarekelly/app/modules/homepage/widgets/comment_card.dart';
import 'package:clarekelly/app/modules/homepage/widgets/custom_title_widget.dart';
import 'package:clarekelly/app/utils/app_text.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_appbar.dart';
import 'package:clarekelly/app/widgets/custom_comment_field_widget.dart';
import 'package:clarekelly/app/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDatailsScreen extends StatefulWidget {
  static const String routeName = '/event-details-screen';
  const EventDatailsScreen({super.key});

  @override
  State<EventDatailsScreen> createState() => _EventDatailsScreenState();
}

class _EventDatailsScreenState extends State<EventDatailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Event Details',
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageContainer(
                cHeight: 226.0,
                cWidth: 368.0,
                imagePath: AssetsPath.imagefootballKid,
              ),
              heightBox4,
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Julia’s Football Match!',
                      style: GoogleFonts.notoSansMyanmar(
                          fontSize: 22.sp, fontWeight: FontWeight.w600),
                    ),
                    heightBox4,
                    goingInterestSection(),
                  ],
                ),
              ),
              heightBox12,
              CustomTitle(
                title: 'Date',
                subtitle: '31st Dec 2025',
                icon: Icons.calendar_month,
              ),
              heightBox8,
              CustomTitle(
                title: 'Time',
                subtitle: '04:00 PM',
                icon: Icons.watch_later,
              ),
              heightBox8,
              CustomTitle(
                title: 'Location',
                subtitle: '36 Guild Street London.',
                icon: Icons.location_on_rounded,
              ),
              heightBox8,
              CustomTitle(
                title: 'Category',
                subtitle: 'Sports',
                icon: Icons.category_rounded,
              ),
              heightBox8,
              Text(
                'Event Description',
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              heightBox4,
              Text(
                DemoText.eventDescription,
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 16.sp, fontWeight: FontWeight.w300),
              ),
              heightBox4,
              Text(
                'Organized By',
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              heightBox8,
              Row(
                children: [
                  CircleAvatar(
                    radius: 36.r,
                    backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                  ),
                  widthBox4,
                  Text(
                    'Emily K.',
                    style: GoogleFonts.notoSansMyanmar(
                        fontSize: 16.sp, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              heightBox8,
              commentSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget commentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 230,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommentCard(
                  name: "Sara William",
                  date: "Aug 19, 2021",
                  comment:
                      "In mauris porttitor tincidunt mauris massa sit lorem sed scelerisque.",
                  imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
                ),
                heightBox8,
                CommentCard(
                  name: "Sara William",
                  date: "Aug 19, 2021",
                  comment:
                      "In mauris porttitor tincidunt mauris massa sit lorem sed scelerisque. Fringilla pharetra vel tristique.",
                  imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
                ),
                heightBox8,
                CommentCard(
                  name: "Sara William",
                  date: "Aug 19, 2021",
                  comment:
                      "In mauris porttitor tincidunt mauris massa sit lorem sed scelerisque. Fringilla pharetra vel tristique.",
                  imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
                ),
              ],
            ),
          ),
        ),
        heightBox4,
        Padding(
          padding: EdgeInsets.all(12.0.r),
          child: CommentInputField(
            cHeight: 52,
          ),
        ),
      ],
    );
  }

  Widget goingInterestSection() {
    return Container(
      width: 260.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: EdgeInsets.all(4.0.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.green,
                radius: 11.r,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 14.h,
                )),
                widthBox5,
            Text(
              'Going',
              style: GoogleFonts.notoSansMyanmar(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff5D5D5D)),
            ),
            widthBox12,
            CircleAvatar(
                backgroundColor: Colors.red,
                radius: 11,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 14.h,
                )),
                 widthBox5,
            Text(
              'Not available',
              style: GoogleFonts.notoSansMyanmar(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff5D5D5D)),
            ),
          ],
        ),
      ),
    );
  }
}
