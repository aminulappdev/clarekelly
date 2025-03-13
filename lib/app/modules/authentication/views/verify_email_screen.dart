import 'package:clarekelly/app/modules/authentication/views/otp_screen.dart';
import 'package:clarekelly/app/modules/authentication/widgets/costum_textField.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_richText.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyEmailScreen extends StatefulWidget {
  static const String routeName = '/verify-email-screen';
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
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
                buildForgotPasswordInForm(),
                SizedBox(height: 450.h,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.pushNamed(context, OTPScreen.routeName,arguments: {'pPage': 'verifyEmail', 'email': 'user@example.com'},);
                    },
                    child: Text('Get Verification Code'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForgotPasswordInForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            keyboardType: TextInputType.emailAddress,
            label: 'Email',
            hintText: 'Email',
            icon: Icons.email,
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Enter email';
              }
              if (EmailValidator.validate(value) == false) {
                return 'Enter a valid email address';
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
            mainText: 'Forget Your',
            mainTextSize: 24.sp,
            mainTextColor: Colors.black,
            mainTextFontWeight: FontWeight.normal,
            richText: "Password?",
            richTextSize: 24.sp,
            richTextColor: AppColors.themeColor,
            richTextFontWeight: FontWeight.normal),
        heightBox4,
        Text(
          'Enter your email address to reset your password.',
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
