import 'package:clarekelly/app/modules/events/views/feature_events.dart';
import 'package:clarekelly/app/modules/events/views/show_event_page.dart';
import 'package:clarekelly/app/modules/homepage/widgets/homepage_header.dart';
import 'package:clarekelly/app/modules/homepage/widgets/people_widget_card.dart';
import 'package:clarekelly/app/modules/homepage/widgets/peoples_screen.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:clarekelly/app/widgets/custom_title_row.dart';
import 'package:clarekelly/app/modules/events/widgets/event_item_card.dart';
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
        padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox30,
              HomepageHeader(title: 'Welcome Back! Emily K.',imageUrl: AssetsPath.imagefootballKid,),
              heightBox12,
              const SearchBarWidget(
                hintText: 'Search for events...',
                isSuffixIcon: true,
              ),
              heightBox8,
              CostumTitleRow(
                title: 'Feature events',
                ontap: () {
                  Navigator.pushNamed(
                    context,
                    ShowEventsScreen.routeName,
                    arguments: ShowEventsArguments(
                      appTitle: 'Feature Events',
                      content: FeatureEvents(),
                    ),
                  );
                },
              ),
              heightBox8,
              SizedBox(
                height: 340.h,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 2,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.53,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
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
                ontap: () {
                  Navigator.pushNamed(context, PeoplesScreen.routeName);
                },
              ),
              heightBox8,
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return PeopleCardWidget();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

