
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentCard extends StatelessWidget {
  final String name;
  final String date;
  final String comment;
  final String imageUrl;

  const CommentCard({
    super.key,
    required this.name,
    required this.date,
    required this.comment,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
       
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(imageUrl),
          ),
           SizedBox(width: 12.w),

         
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding:  EdgeInsets.all(4.0.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text(
                          name,
                          style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w700),
                          ),
                        
                      
                        Text(
                          date,
                          style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),                          
                   Text(
                      comment,
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}