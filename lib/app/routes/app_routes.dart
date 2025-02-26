import 'package:clarekelly/app/modules/authentication/views/auth_scree.dart';
import 'package:clarekelly/app/modules/authentication/views/change_password_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/complete_profile_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/verify_email_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/otp_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_in_screen.dart';
import 'package:clarekelly/app/modules/authentication/views/sign_up_screen.dart';
import 'package:clarekelly/app/modules/chat/views/add_memeber_group_screen.dart';
import 'package:clarekelly/app/modules/chat/views/chatting_screen.dart';
import 'package:clarekelly/app/modules/events/views/create_event_screen.dart';
import 'package:clarekelly/app/modules/events/views/event_bar.dart';
import 'package:clarekelly/app/modules/events/views/event_datails_screen.dart';
import 'package:clarekelly/app/modules/events/views/feature_events.dart';
import 'package:clarekelly/app/modules/events/views/my_event_details_screen.dart';
import 'package:clarekelly/app/modules/followers/views/follow_page_bar.dart';
import 'package:clarekelly/app/modules/homepage/views/member_profile_screen.dart';
import 'package:clarekelly/app/modules/events/views/show_event_page.dart';
import 'package:clarekelly/app/modules/homepage/widgets/peoples_screen.dart';
import 'package:clarekelly/app/modules/notifications/views/notification_screen.dart';
import 'package:clarekelly/app/modules/onboarding/views/onboarding_screen.dart';
import 'package:clarekelly/app/modules/profile/views/edit_profile_screen.dart';
import 'package:clarekelly/app/modules/profile/views/my_progile.dart';
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
    VerifyEmailScreen.routeName: (context) => const VerifyEmailScreen(),
    VerifyEmailScreen.routeName: (context) => const VerifyEmailScreen(),
    OTPScreen.routeName: (context) {
      final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      return OTPScreen(pPage: args['pPage']!, email: args['email']!);
    },
    CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),

    // Common Section
    MainButtonNavbarScreen.routeName: (context) =>
        const MainButtonNavbarScreen(),

    // Homepage Section
    MemberProfileScreen.routeName: (context) => const MemberProfileScreen(),
    PeoplesScreen.routeName: (context) => const PeoplesScreen(),


    // Event Section
    EventBarScreen.routeName: (context) => const EventBarScreen(),
    CreateEventScreen.routeName: (context) => const CreateEventScreen(),
    FeatureEvents.routeName: (context) => const FeatureEvents(),
    EventDatailsScreen.routeName: (context) => const EventDatailsScreen(),
    ShowEventsScreen.routeName: (context) => ShowEventsScreen(),
    MyEventsDetails.routeName: (context) => MyEventsDetails(),

    // Profile Section
    MyProfileScreen.routeName: (context) => MyProfileScreen(),
    EditProfileScreen.routeName: (context) => EditProfileScreen(),
    ChangePasswordScreen.routeName: (context) => const ChangePasswordScreen(),

    // Chatting Section
    ChattingScreen.routeName: (context) {
      final args = ModalRoute.of(context)!.settings.arguments as bool;
      return ChattingScreen(isGroup: args,);
    },
    AddMembersGroupScreen.routeName: (context) => AddMembersGroupScreen(),

    // Notification Section
    NotificationScreen.routeName: (context) => NotificationScreen(),

    // Follower Section
    FollowBarScreen.routeName: (context) => FollowBarScreen(),
  };

  static var initialRoute = OnboardingScreen.routeName;
}
