import 'package:clarekelly/app/modules/followers/views/followers_screen.dart';
import 'package:clarekelly/app/modules/followers/views/following_screen.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:flutter/material.dart';


class FollowBarScreen extends StatefulWidget {
  const FollowBarScreen({super.key});
  static const String routeName = '/follower-bar-screen';

  @override
  _FollowBarScreenState createState() => _FollowBarScreenState();
}

class _FollowBarScreenState extends State<FollowBarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(80), 
        child: AppBar(
          elevation: 0,
          backgroundColor: AppColors.secondaryBackgroundColor,
           leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
          bottom: TabBar(
            controller: _tabController,
            labelColor: AppColors.themeColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.themeColor,
            tabs: const [
              Tab(text: "Followers"),
              Tab(text: "Following"),
              
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                FollowersScreen(),
                FollowingScreen(),
                
            
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
