import 'package:clarekelly/app/modules/authentication/views/reset_password.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_in_screen.dart';
import 'package:clarekelly/app/modules/authentication/widgets/custom_account_cheking.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_three_reach_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  final String email;
  final String pPage;
  static const String routeName = '/otp-screen';
  const OTPScreen({super.key, required this.pPage, required this.email});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
                buildOTPForm(),
                heightBox20,
                CustomAccountCheking(
                    name: 'Didn’t receive the code? ',
                    operationName: 'Resend',
                    ontap: () {}),
                SizedBox(
                  height: 400.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (widget.pPage == 'signUp') {
                        Navigator.pushNamed(
                            context, SignInScreen.routeName);
                      } else if (widget.pPage == 'verifyEmail') {
                        Navigator.pushNamed(
                            context, ResetPasswordScreen.routeName);
                      }
                    },
                    child: Text('Verify'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOTPForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: PinCodeTextField(
              length: 4,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                  borderWidth: 0.2,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12.r),
                  inactiveColor: const Color.fromARGB(
                      218, 222, 220, 220), // Border color when not filled
                  fieldHeight: 70.h,
                  fieldWidth: 70.h,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              appContext: context,
            ),
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
          mainText: 'Enter ',
          mainTextSize: 24.sp,
          mainTextColor: Colors.black,
          mainTextFontWeight: FontWeight.normal,
          richText: "Verification ",
          richTextSize: 24.sp,
          richTextColor: AppColors.themeColor,
          richTextFontWeight: FontWeight.normal,
          secondRichText: 'Code',
          secondRichTextColor: Colors.black,
          secondRichTextFontWeight: FontWeight.normal,
          secondRichTextSize: 24.sp,
        ),
        heightBox4,
        Text(
          'Enter the code that was sent to your email.',
          style: GoogleFonts.outfit(
              fontSize: 14.sp,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500),
        ),
        heightBox4,
      ],
    );
  }
}
