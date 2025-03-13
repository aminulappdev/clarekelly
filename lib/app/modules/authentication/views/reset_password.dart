import 'package:clarekelly/app/modules/authentication/views/sign_in_screen.dart';
import 'package:clarekelly/app/modules/authentication/widgets/costum_textField.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_richText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String routeName = '/reset-password-screen';
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                heightBox30,
                headerSection(),
                heightBox30,
                buildResetPasswordInForm(),
                SizedBox(
                  height: 350.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Text('Continue'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildResetPasswordInForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: 'Password',
            hintText: 'Password',
            icon: Icons.lock,
            isPassword: true,
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'password';
              }
              return null;
            },
          ),
          heightBox16,
          CustomTextField(
            label: 'Confirm Password',
            hintText: 'password',
            icon: Icons.lock,
            isPassword: true,
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'password';
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
        CustomRichText(
            mainText: 'Now Reset Your',
            mainTextSize: 24.sp,
            mainTextColor: Colors.black,
            mainTextFontWeight: FontWeight.normal,
            richText: "Password.",
            richTextSize: 24.sp,
            richTextColor: AppColors.themeColor,
            richTextFontWeight: FontWeight.normal),
        heightBox4,
        Text(
          'Password  must have 6-8 characters.',
          style: GoogleFonts.notoSansMyanmar(
              fontSize: 14.sp,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500),
        ),
        heightBox4,
      ],
    );
  }
}
