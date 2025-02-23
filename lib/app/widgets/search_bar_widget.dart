import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search for events or persons...",
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
          suffixIcon: Icon(Icons.tune, color: Colors.grey.shade600),
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
