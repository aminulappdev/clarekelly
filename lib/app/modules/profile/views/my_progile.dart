import 'package:clarekelly/app/modules/followers/views/follow_page_bar.dart';
import 'package:clarekelly/app/modules/profile/views/edit_profile_screen.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/modules/events/widgets/half_event_item_card.dart';
import 'package:clarekelly/app/widgets/my_drawer.dart';
import 'package:clarekelly/app/widgets/small_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileScreen extends StatefulWidget {
  static const String routeName = '/my-profile-screen';
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      backgroundColor: AppColors.secondaryBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightBox12,
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 36.h,
                      color: AppColors.themeColor,
                    )),
              ),

              CircleAvatar(
                backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                radius: 39.r,
              ),
              heightBox8,
              Text(
                'Emily K.',
                style: GoogleFonts.poppins(
                    fontSize: 20.sp, fontWeight: FontWeight.w700),
              ),
              Text(
                'example@gmail.com',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.w400),
              ),
              heightBox8,
              SmallElevatedButton(
                name: 'Edit Profile',
                bgColor: Colors.black,
                textColor: Colors.white,
                pageName: EditProfileScreen.routeName,
              ),
              heightBox8,
              followerCheckFunction(context),
              heightBox8,
              Card(
                elevation: 2.0,
                child: Container(
                  height: 40.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                    child: Text(
                      'Events',
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              heightBox20,
              // profileEventAlternativeContent()
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.68,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return const HalfEventItemCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget followerCheckFunction(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, FollowBarScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                '100',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                'Events',
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeColor),
              ),
            ],
          ),
          Container(
            height: 32,
            width: 2,
            color: AppColors.themeColor,
          ),
          Column(
            children: [
              Text(
                '25',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                'Following',
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeColor),
              ),
            ],
          ),
          Container(
            height: 32,
            width: 2,
            color: AppColors.themeColor,
          ),
          Column(
            children: [
              Text(
                '10M',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                'Followers',
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.themeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget profileEventAlternativeContent() {
    return Column(
      children: [
        Text(
          'Events will be shown when you follow this user.',
          style: GoogleFonts.outfit(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        heightBox12,
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsPath.profileEventAlt),
                fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
