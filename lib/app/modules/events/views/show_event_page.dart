import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ShowEventsScreen extends StatelessWidget {

  static const String routeName = '/show-event-screen';
  const ShowEventsScreen(
      {super.key,});

      
  @override
  Widget build(BuildContext context) {
     final args = ModalRoute.of(context)!.settings.arguments as ShowEventsArguments;
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: CustomAppBar(title: args.appTitle),
      body: Container(child: args.content),
    );
  }
}

// Define a model for passing arguments
class ShowEventsArguments {
  final String appTitle;
  final Widget content;

  ShowEventsArguments({required this.appTitle, required this.content});
}
