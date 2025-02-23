import 'package:clarekelly/app/modules/authentication/views/sign_in_screen.dart';
import 'package:clarekelly/app/modules/authentication/widgets/costum_textField.dart';
import 'package:clarekelly/app/modules/authentication/widgets/custom_account_cheking.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                buildSignUpForm(),
                heightBox8,
                termsCondition(),
                heightBox12,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign up'),
                  ),
                ),
                heightBox12,
                CustomAccountCheking(
                  name: 'Already have an account? ',
                  operationName: 'Sign In',
                  ontap: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                ),
                widthBox4,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget termsCondition() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text(
              'Agree with',
              style: GoogleFonts.outfit(
                  fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        widthBox4,
        GestureDetector(
          onTap: () {},
          child: Text(
            'Terms and Conditions.',
            style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff909090)),
          ),
        ),
      ],
    );
  }

  Widget buildSignUpForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            keyboardType: TextInputType.text,
            label: 'Full Name',
            hintText: 'Full Name',
            icon: Icons.email,
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Enter email';
              }

              return null;
            },
          ),
          heightBox16,
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
          heightBox16,
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
        Text(
          'Welcome Here!',
          style:
              GoogleFonts.outfit(fontSize: 24.sp, fontWeight: FontWeight.w500),
        ),
        heightBox4,
        Text(
          'Create An Account.',
          style: GoogleFonts.outfit(
              fontSize: 24.sp,
              color: AppColors.themeColor,
              fontWeight: FontWeight.w500),
        ),
        heightBox4,
        Text(
          'Fill in your information.',
          style:
              GoogleFonts.outfit(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
