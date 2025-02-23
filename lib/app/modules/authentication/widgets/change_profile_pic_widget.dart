import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:clarekelly/app/utils/app_colors.dart';

class ChangeProfilePic extends StatefulWidget {
  const ChangeProfilePic({super.key, File? image});

  @override
  State<ChangeProfilePic> createState() => _ChangeProfilePicState();
}

class _ChangeProfilePicState extends State<ChangeProfilePic> {
  File? image;

  Future<void> showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => _pickImage(ImageSource.camera),
                icon:  Icon(Icons.camera_alt, size: 40.h),
              ),
              IconButton(
                onPressed: () => _pickImage(ImageSource.gallery),
                icon:  Icon(Icons.photo_library, size: 40.h),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          image = File(pickedImage.path);
        });
      }
    } catch (e) {
      debugPrint("Error picking image: $e");
    } finally {
      if (mounted) Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2.w),
            ),
            child: CircleAvatar(
              backgroundColor: AppColors.themeColor,
              radius: 44.r,
              child: image != null
                  ? ClipOval(
                      child: Image.file(
                        image!,
                        width: 90.h,
                        height: 90.h,
                        fit: BoxFit.cover,
                      ),
                    )
                  :  Icon(
                      Icons.person_outline_sharp,
                      size: 90.h,
                      color: AppColors.themeColor,
                    ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                icon: const Icon(
                  Icons.mode_edit_outline_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
