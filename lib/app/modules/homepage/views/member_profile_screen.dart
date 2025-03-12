import 'package:clarekelly/app/modules/profile/views/edit_profile_screen.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/modules/events/widgets/half_event_item_card.dart';
import 'package:clarekelly/app/widgets/small_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MemberProfileScreen extends StatefulWidget {
  static const String routeName = '/profile-screen';
  const MemberProfileScreen({super.key});

  @override
  State<MemberProfileScreen> createState() => _MemberProfileScreenState();
}

class _MemberProfileScreenState extends State<MemberProfileScreen> {
  bool showEvent = false;

  @override
  void initState() {
    showEventFunction();
    super.initState();
  }

  Future<void> showEventFunction() async {
    await Future.delayed(const Duration(seconds: 3));
    showEvent = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightBox12,
              Align(
                alignment: Alignment.centerLeft,
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
                name: showEvent ? 'Follow': 'Unfollow',
                bgColor: AppColors.themeColor,
                textColor: Colors.white,pageName: EditProfileScreen.routeName
              ),
              heightBox8,
              followerDatails(),
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
              Visibility(
                visible: showEvent,
                replacement: profileEventAlternativeContent(),
                child: Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.68,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return const HalfEventItemCard();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget followerDatails() {
    return Row(
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
              'Events created',
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
                  fit: BoxFit.fill)),
        ),
      ],
    );
  }
}
