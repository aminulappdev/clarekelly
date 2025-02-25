
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatefulWidget {
  final String hintText;
  final bool isSuffixIcon;
  const SearchBarWidget({super.key, required this.hintText, required this.isSuffixIcon});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  Map<String, bool> filters = {
    "Sports": false,
    "Academic": false,
    "Music": false,
  };

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Color(0xFFD9E6E3),
          child: Container(
            width: 280.w,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: filters.keys.map((key) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        filters[key] = !filters[key]!;
                      });
                      Navigator.pop(context);
                      _showFilterDialog(); 
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            key,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Checkbox(
                            value: filters[key],
                            onChanged: (bool? value) {
                              setState(() {
                                filters[key] = value!;
                              });
                              Navigator.pop(context);
                              _showFilterDialog(); 
                            },
                            activeColor: Colors.teal,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
          suffixIcon: widget.isSuffixIcon
              ? GestureDetector(
                  onTap: _showFilterDialog,
                  child: Icon(Icons.tune, color: Colors.grey.shade600),
                )
              : null,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 12.r),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
