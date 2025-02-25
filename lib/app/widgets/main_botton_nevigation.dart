import 'package:clarekelly/app/modules/chat/views/chat_dashboard_screen.dart';
import 'package:clarekelly/app/modules/events/views/event_bar.dart';
import 'package:clarekelly/app/modules/homepage/views/home_screen.dart';
import 'package:clarekelly/app/modules/profile/views/my_progile.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButtonNavbarScreen extends StatefulWidget {
  static const String routeName = '/mainbottom-nav-screen';

  const MainButtonNavbarScreen({super.key});

  @override
  State<MainButtonNavbarScreen> createState() => _MainButtonNavbarScreenState();
}

class _MainButtonNavbarScreenState extends State<MainButtonNavbarScreen> {
  int selectedKey = 0;

  List<Widget> screens = const [
    HomeScreen(),
    EventBarScreen(),
    ChatDashboardScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedKey],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedKey,
          onTap: (index) {
            setState(() {
              selectedKey = index;
            });
          },
          backgroundColor: AppColors.primaryBackgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.themeColor, 
          unselectedItemColor: Colors.grey, 
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0, 
          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home,size: 32.h,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_outlined),
              activeIcon: Icon(Icons.event,size: 32.h,),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              activeIcon: Icon(Icons.chat,size: 32.h,),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person,size: 32.h,),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
