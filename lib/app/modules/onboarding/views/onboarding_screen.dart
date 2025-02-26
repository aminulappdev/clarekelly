import 'package:clarekelly/app/modules/authentication/views/auth_scree.dart';
import 'package:clarekelly/app/modules/onboarding/views/page_view.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding-screen';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<String> buttonTexts = ['Get Started', 'Next', 'Let\'s Go!'];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(
                  () {
                    _currentPage = index;
                  },
                );
              },
              children: [
                OnboardingPage(
                  imageHeight: 300,
                  showWelcomeText: true,
                  image: AssetsPath.onBoardingPage1,
                  title: "Stay Connected with Your Family & Friends!",
                  subtitle:
                      "Easily share, track, and organize events with your loved ones in one centralized place.",
                ),
                OnboardingPage(
                  imageHeight: 280,
                  showWelcomeText: false,
                  image: AssetsPath.onBoardingPage2,
                  title: "Create & Manage Your Groups Effortlessly.",
                  subtitle:
                      "Post schedules for games, concerts, or important events. Members can RSVP and stay updated!",
                ),
                OnboardingPage(
                  imageHeight: 280,
                  showWelcomeText: false,
                  image: AssetsPath.onBoardingPage3,
                  title: "Real-Time Updates & Reminders.",
                  subtitle:
                      "Get notifications, chat with your group, and make sure no one misses a thing!",
                ),
              ],
            ),
            Positioned(
              bottom: 140.h,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 8.0.h,
                      dotWidth: 20.0.w,
                      spacing: 16.0,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.themeColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 30.h,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentPage < 2) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacementNamed(
                          context, AuthScreen.routeName);
                    }
                  },
                  child: Text(buttonTexts[_currentPage]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
