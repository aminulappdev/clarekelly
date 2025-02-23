import 'package:clarekelly/app/modules/authentication/views/auth_scree.dart';
import 'package:clarekelly/app/modules/authentication/views/complete_profile_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/forgot_password_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/otp_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/reset_password.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_in_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_up_screen.dart';
import 'package:clarekelly/app/modules/onboarding/views/onboarding_screen.dart';
import 'package:clarekelly/app/widgets/main_botton_nevigation.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> appRoutes = {
    // OnBoarding Section
    OnboardingScreen.routeName: (context) => const OnboardingScreen(),
    AuthScreen.routeName: (context) => const AuthScreen(),

    // Authentication Section
    SignUpScreen.routeName: (context) => const SignUpScreen(),
    SignInScreen.routeName: (context) => const SignInScreen(),
    ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
    ResetPasswordScreen.routeName: (context) => const ResetPasswordScreen(),
    OTPScreen.routeName: (context) => const OTPScreen(),
    CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),

    // Common Section
    MainButtonNavbarScreen.routeName: (context) => const MainButtonNavbarScreen(),

    // Homepage Section
    CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),

  };

  static var initialRoute = OnboardingScreen.routeName;
}
