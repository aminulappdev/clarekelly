import 'package:clarekelly/app/utils/app_colors.dart';
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:clarekelly/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMembersGroupScreen extends StatefulWidget {
  static const String routeName = '/add-group-screen';
  const AddMembersGroupScreen({super.key});

  @override
  _AddMembersGroupScreenState createState() => _AddMembersGroupScreenState();
}

class _AddMembersGroupScreenState extends State<AddMembersGroupScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Sample list of people
  final List<String> allPeople = List.generate(8, (index) => "Emily K. $index");

  // Map to track selected state per person
  Map<String, bool> selectedPeople = {};

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text("New Group",style: GoogleFonts.outfit(fontSize: 20.sp,fontWeight: FontWeight.w400),),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Create", style: GoogleFonts.outfit(fontSize: 18.sp,fontWeight: FontWeight.w700,color: AppColors.themeColor),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Group name (optional)'
                ),
              ),
            ),
            heightBox8,
            SizedBox(
              height: 50.h,
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            
            if (selectedPeople.values.contains(true))
              Padding(
                padding:  EdgeInsets.only(bottom: 10.0.h), 
                child: SizedBox(
                  height: 80.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: selectedPeople.entries.where((entry) => entry.value).map((entry) {
                      return Padding(
                        padding:  EdgeInsets.only(right: 8.0.w),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                   backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                                  radius: 25.r,
                                ),
                                SizedBox(height: 4.h),
                                Text(entry.key, style: TextStyle(fontSize: 12.sp)),
                              ],
                            ),
                            Positioned(
                              right: -5.w,
                              top: -5.h,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedPeople[entry.key] = false;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 12,
                                  child: Icon(Icons.close, size: 14.h, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

            Text("Suggested", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),

            Expanded(
              child: ListView.builder(
                itemCount: allPeople.length,
                itemBuilder: (context, index) {
                  final person = allPeople[index];
                  if (searchQuery.isNotEmpty && !person.toLowerCase().contains(searchQuery.toLowerCase())) {
                    return Container();
                  }
                  return ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(AssetsPath.imagefootballKid),
                      radius: 25.r,                 
                    ),
                    title: Text(person,style: GoogleFonts.outfit(fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    trailing: Checkbox(
                      value: selectedPeople[person] ?? false,
                      onChanged: (bool? isChecked) {
                        setState(() {
                          selectedPeople[person] = isChecked ?? false;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
