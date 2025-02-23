import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/widgets/full_event_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UpCommingEventScreen extends StatefulWidget {
  const UpCommingEventScreen({super.key});

  @override
  State<UpCommingEventScreen> createState() => _UpCommingEventScreenState();
}

class _UpCommingEventScreenState extends State<UpCommingEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: AppBar(     
        backgroundColor: Colors.transparent,
        title: Text('Up Coming Events',style: GoogleFonts.outfit(fontSize: 20.sp,fontWeight: FontWeight.w600),),leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back)),centerTitle: true,),
      body: Expanded(
        child: ListView.builder(
          
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.only(bottom: 8.h,left: 12.w,right: 12.w),
              child: FullEventItemCard(),
            );
          },),
      ),
    );
  }
}