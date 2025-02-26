import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/modules/events/widgets/full_event_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyEvents extends StatefulWidget {
  static const String routeName = '/my-event-screen';
  const MyEvents({super.key});


  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8.h, left: 12.w, right: 12.w),
            child: FullEventItemCard(),
          );
        },
      ),
    );
  }
}
