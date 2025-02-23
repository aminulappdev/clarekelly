import 'package:clarekelly/app/modules/authentication/widgets/change_profile_pic_widget.dart';
import 'package:clarekelly/app/modules/authentication/widgets/costum_textField.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_three_reach_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CompleteProfileScreen extends StatefulWidget {
  static const String routeName = '/complete-profile-screen';
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                headerSection(),
                heightBox16,
                ChangeProfilePic(),
                heightBox12,
                buildCompleteProfileForm(),
                heightBox50,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue',
                        ),
                        SizedBox(width: 8.w),
                        Icon(Icons.arrow_circle_right,
                            size: 32.h, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                heightBox50,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCompleteProfileForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            keyboardType: TextInputType.emailAddress,
            label: 'Full Name',
            hintText: 'Full Name',
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Enter email';
              }
              return null;
            },
          ),
          heightBox16,
          CustomTextField(
            label: 'Address',
            hintText: 'Address',
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Enter Address';
              }
              return null;
            },
          ),
          heightBox16,
          CustomTextField(
            maxline: 2,
            label: 'Bio',
            hintText: 'Write about yourself',
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Enter Bio';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget headerSection() {
    return Column(
      children: [
        heightBox30,
        CustomThreeRichText(
          mainText: 'Now Complete Your ',
          mainTextSize: 24.sp,
          mainTextColor: Colors.black,
          mainTextFontWeight: FontWeight.normal,
          richText: "Profile ",
          richTextSize: 24.sp,
          richTextColor: AppColors.themeColor,
          richTextFontWeight: FontWeight.normal,
          secondRichText: 'to Continue.',
          secondRichTextColor: Colors.black,
          secondRichTextFontWeight: FontWeight.normal,
          secondRichTextSize: 24.sp,
        ),
        heightBox4,
        Text(
          'Fill in your information.',
          style: GoogleFonts.outfit(
              fontSize: 14.sp,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

