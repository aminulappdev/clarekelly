import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChattingFieldWidget extends StatefulWidget {
  final String hintText;
 
  const ChattingFieldWidget({super.key, required this.hintText});

  @override
  State<ChattingFieldWidget> createState() => _ChattingFieldWidgetState();
}

class _ChattingFieldWidgetState extends State<ChattingFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(Icons.chat_bubble, color: Colors.grey.shade600),            
         
          filled: true,
          fillColor: Colors.white,
          contentPadding:  EdgeInsets.symmetric(vertical: 12.r),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none, 
          ),
        ),
      ),
    );
  }
}
