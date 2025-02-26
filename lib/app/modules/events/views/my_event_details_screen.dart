import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/widgets/custom_appbar.dart';
import 'package:clarekelly/app/modules/events/widgets/full_event_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyEventsDetails extends StatefulWidget {
  static const String routeName = '/my-event-screen';
  const MyEventsDetails({super.key});


  @override
  State<MyEventsDetails> createState() => _MyEventsDetailsState();
}

class _MyEventsDetailsState extends State<MyEventsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Events'),
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
