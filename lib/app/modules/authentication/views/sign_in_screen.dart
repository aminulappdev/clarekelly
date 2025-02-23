import 'package:clarekelly/app/modules/authentication/views/forgot_password_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_up_screen.dart';
import 'package:clarekelly/app/modules/authentication/widgets/costum_textField.dart';
import 'package:clarekelly/app/modules/authentication/widgets/custom_account_cheking.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/signin-screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                buildSignInForm(),
                heightBox8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    forgotPasswordSection(),
                    widthBox4,
                    GestureDetector(
                      onTap: () {
                         Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                      },
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.outfit(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ],
                ),
                heightBox50,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign up'),
                  ),
                ),
                heightBox50,
                CustomAccountCheking( 
                  name: 'Don’t have an account? ',
                  operationName: 'Sign Up',
                  ontap: () {
                     Navigator.pushNamed(context, SignUpScreen.routeName);
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

  Row forgotPasswordSection() {
    return Row(
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
                        'Remember me',
                        style: GoogleFonts.outfit(
                            fontSize: 16.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  );
  }

  Widget buildSignInForm() {
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
        ],
      ),
    );
  }

  Widget headerSection() {
    return Column(
      children: [
        Text(
          'Welcome Back!',
          style: GoogleFonts.outfit(fontSize: 24.sp, fontWeight: FontWeight.w500),
        ),
        heightBox4,
        Text(
          'Let\'s Sign In.',
          style: GoogleFonts.outfit(
              fontSize: 24.sp,
              color: AppColors.themeColor,
              fontWeight: FontWeight.w500),
        ),
        heightBox4,
        
      ],
    );
  }
}
