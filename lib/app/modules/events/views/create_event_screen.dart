import 'dart:io';
import 'package:clarekelly/app/modules/authentication/widgets/costum_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_appbar.dart';

class CreateEventScreen extends StatefulWidget {
  static const String routeName = '/create-event-screen';
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? image;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryBackgroundColor,
        appBar: CustomAppBar(title: 'Create An Event'),
        body: Padding(
          padding: EdgeInsets.all(12.0.h),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    label: 'Name of Event',
                    hintText: 'Enter event name',
                    keyboardType: TextInputType.text,
                  ),
                  heightBox16,
                  CustomTextField(
                    label: 'Event Category',
                    hintText: 'Select category',
                    keyboardType: TextInputType.text,
                  ),
                  heightBox16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDateTimeField(
                        label: "Date",
                        value: selectedDate != null
                            ? DateFormat("EEE, MMM dd").format(selectedDate!)
                            : "Select Date",
                        icon: Icons.calendar_today,
                        onTap: () => _selectDate(context),
                      ),
                      SizedBox(width: 8.w),
                      _buildDateTimeField(
                        label: "Time",
                        value: selectedTime != null
                            ? selectedTime!.format(context)
                            : "Select Time",
                        icon: Icons.access_time,
                        onTap: () => _selectTime(context),
                      ),
                    ],
                  ),
                  heightBox16,
                  CustomTextField(
                    label: 'Location',
                    hintText: 'Enter event location',
                  ),
                  heightBox16,
                  CustomTextField(
                    label: 'Event Description',
                    hintText: 'Enter event description',
                    maxline: 2,
                  ),
                  heightBox16,
                  image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.file(
                            image!,
                            fit: BoxFit.fill,
                            height: 400.h,
                            width: MediaQuery.of(context).size.width,
                          ),
                        )
                      : _buildUploadField(),
                  heightBox16,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Create Event',
                        style: GoogleFonts.outfit(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  heightBox12,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  Widget _buildDateTimeField({
    required String label,
    required String value,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.outfit(
                fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6.h),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding:  EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(value, style:  TextStyle(fontSize: 16.sp)),
                  Icon(icon, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUploadField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload Poster/Flyer',
          style:
              GoogleFonts.outfit(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        GestureDetector(
          onTap: () {},
          child: DottedBorder(
            color: Colors.black54,
            strokeWidth: 2,
            dashPattern: [6, 3],
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            child: Container(
              height: 120.h,
              width: double.infinity,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(Icons.cloud_upload,
                        size: 30.h, color: Colors.black54),
                    Text(
                      'Upload your poster/flyer',
                      style: GoogleFonts.outfit(
                          fontSize: 14.sp, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _pickImageFromCamera() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
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

  Future<void> _pickImageFromGallery() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
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

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    _pickImageFromCamera();
                  },
                  icon:  Icon(Icons.camera_alt, size: 40.h),
                ),
                IconButton(
                  onPressed: () {
                    _pickImageFromGallery();
                  },
                  icon:  Icon(Icons.photo_library, size: 40.h),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
