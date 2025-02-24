
import 'package:clarekelly/app/modules/events/views/feature_events.dart';
import 'package:clarekelly/app/modules/events/views/show_event_page.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_title_row.dart';
import 'package:clarekelly/app/widgets/event_item_card.dart';
import 'package:clarekelly/app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox30,
            const SearchBarWidget(),
            heightBox8,
            CostumTitleRow(
              title: 'Feature events',
              ontap: () {
                Navigator.pushNamed(context, ShowEventsScreen.routeName, arguments: ShowEventsArguments(appTitle: 'Feature Events', content: FeatureEvents()));
              },
            ),
            heightBox8,
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.53,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return const EventItemCard();
                },
              ),
            ),
            heightBox8,
            CostumTitleRow(
              title: 'People You May Know',
              ontap: () {},
            ),
            heightBox8,
          ],
        ),
      ),
    );
  }
}
