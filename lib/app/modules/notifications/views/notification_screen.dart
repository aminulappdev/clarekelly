import 'package:clarekelly/app/modules/notifications/widgets/group_notification.dart';
import 'package:clarekelly/app/modules/notifications/widgets/single_person_notification.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static const String routeName = '/notification-screen';
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: CustomAppBar(title: 'Notifications'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SinglePersionNotification(),
            GroupNotification(),
            SinglePersionNotification(),
            GroupNotification(),
            SinglePersionNotification(),
            GroupNotification(),
            SinglePersionNotification(),
            GroupNotification(),
          ],
        ),
      ),
    );
  }
}
