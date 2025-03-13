import 'package:clarekelly/app/routes/app_routes.dart';
import 'package:clarekelly/app/theme/elevated_theme.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ClareKellyApp());
}

class ClareKellyApp extends StatelessWidget {
  const ClareKellyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          
          debugShowCheckedModeBanner: false,
          title: 'ClareKelly',
          theme: ThemeData(
            fontFamily: 'notoSansMyanmar',
            scaffoldBackgroundColor: AppColors.primaryBackgroundColor,
            elevatedButtonTheme: ElevatedTheme.elevatedButtonThemeData(), 
            useMaterial3: true,
          ),
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.appRoutes,
        );
      },
    );
  }
}
