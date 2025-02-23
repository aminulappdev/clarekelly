import 'package:clarekelly/app/modules/authentication/views/sign_in_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_up_screen.dart';
import 'package:clarekelly/app/modules/authentication/widgets/custom_outline_border_elevated_button.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_richText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRichText(
                mainText: 'Now continue after register in ',
                mainTextSize: 24,
                mainTextColor: AppColors.themeColor,
                mainTextFontWeight: FontWeight.w500,
                richText: '“WinWhen”',
                richTextSize: 24,
                richTextColor: Color(0xff839F9F),
                richTextFontWeight: FontWeight.w700),
            heightBox50,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                   Navigator.pushNamed(context, SignInScreen.routeName);
                },
                child: Text('Sign In'),
              ),
            ),
            heightBox16,
            CustomOutlineBorderElevatedButton(
              name: 'Sign Up',
              ontap: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
