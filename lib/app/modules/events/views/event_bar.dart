import 'package:clarekelly/app/modules/events/views/create_event_screen.dart';
import 'package:clarekelly/app/modules/events/views/feature_events.dart';
import 'package:clarekelly/app/modules/events/views/my_event.dart';
import 'package:clarekelly/app/modules/events/views/up_comming_event.dart';
import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class EventBarScreen extends StatefulWidget {
  const EventBarScreen({super.key});
  static const String routeName = '/event-bar-screen';

  @override
  _EventBarScreenState createState() => _EventBarScreenState();
}

class _EventBarScreenState extends State<EventBarScreen> with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondaryBackgroundColor,
       title: SearchBarWidget(),
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.themeColor,
          unselectedLabelColor: Colors.grey,
          indicatorColor: AppColors.themeColor,
          tabs: const [
            Tab(text: "Featured Events"),
            Tab(text: "Up Coming Events"),
            Tab(text: "My Events"),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CreateEventScreen.routeName);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.themeColor,width: 1.5),
                  borderRadius: BorderRadius.circular(16.r)
                ),
                child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: AppColors.themeColor,),
                    Text('Create Event',style: GoogleFonts.outfit(fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.themeColor),)
                  ],
                ),),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                FeatureEvents(),
                UpComingEvents(),
                MyEvents(),
                 
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class EventsList extends StatelessWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: List.generate(3, (index) => const EventCard()),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Profile Row
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/2.jpg"),
              ),
              const SizedBox(width: 10),
              const Text("Emily K.", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 10),

          // Event Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://source.unsplash.com/300x200/?soccer",
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),

          // Event Title
          const Text(
            "Julia's Football Match!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          // Event Details
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey[600]),
              const SizedBox(width: 5),
              const Text("31st Dec 2025 - 04:00 PM", style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
              const SizedBox(width: 5),
              const Text("36 Guild Street London", style: TextStyle(color: Colors.grey)),
            ],
          ),

          // Action Buttons
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.check_circle, color: Colors.white),
                  label: const Text("Going"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel, color: Colors.white),
                  label: const Text("Not Interested"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
            ],
          ),

          // Comment Input
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Write comment...",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            ),
          ),
        ],
      ),
    );
  }
}
