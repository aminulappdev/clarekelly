// import 'package:clarekelly/app/utils/responsive_size.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:email_validator/email_validator.dart';

// class CustomTextField extends StatelessWidget {
//   final String label;
//   final String hintText;
//   final IconData icon;
//   final TextInputType keyboardType;
//   final bool obscureText;
//   final TextEditingController? controller;
//   final String? Function(String?)? validator;

//   const CustomTextField({
//     super.key,
//     required this.label,
//     required this.hintText,
//     required this.icon,
//     this.keyboardType = TextInputType.text,
//     this.obscureText = false,
//     this.controller,
//     this.validator,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
        
//         Text(
//           label,
//           style: GoogleFonts.poppins(
//             fontSize: 16.sp,
//             fontWeight: FontWeight.w500,
//             color: Colors.black,
//           ),
//         ),
//         heightBox8,
        
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12.r), 
//             boxShadow: [
//               BoxShadow(
//                 color: const Color.fromARGB(70, 70, 70, 70),
//                 blurRadius: 8,
//                 spreadRadius: 0.5,
//                 offset: Offset(0, 3), 
//               ),
//             ],
//           ),
//           child: TextFormField(
//             controller: controller,
//             obscureText: obscureText, 
//             keyboardType: keyboardType,
//             autovalidateMode: AutovalidateMode.onUserInteraction, 
//             validator: validator, 
//             decoration: InputDecoration(
//               hintText: hintText,
//               hintStyle: GoogleFonts.poppins(
//                 fontSize: 14.sp,
//                 color: Colors.grey,
//               ),
//               prefixIcon: Icon(icon, color: Colors.grey), 
//               border: InputBorder.none, 
//               contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData? icon;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int maxline;
  

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.maxline = 1,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true; 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Text(
          widget.label,
          style: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.h), 
        
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r), 
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0, 3), 
              ),
            ],
          ),
          child: TextFormField(
            maxLines: widget.maxline,
            controller: widget.controller,
            obscureText: widget.isPassword ? _obscureText : false,
            keyboardType: widget.keyboardType,
            autovalidateMode: AutovalidateMode.onUserInteraction, 
            validator: widget.validator, 
            decoration: InputDecoration(
              
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
              prefixIcon: widget.icon != null ? Icon(widget.icon, color: Colors.grey) : null,
              border: InputBorder.none, 
              contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
              
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText; 
                        });
                      },
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
