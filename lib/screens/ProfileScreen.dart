import 'package:flutter/material.dart';
import '../colors.dart';
import '../custom_bottom_nav.dart';
import 'UpdateProfile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView( // Prevent overflow issues
          child: Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 55,
                              backgroundImage: AssetImage('assets/profiles/user1.png'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'John Safwat',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Wish List',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'History',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfileUpdateScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.yellow,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text('Edit Profile', style: TextStyle(color: AppColors.black, fontSize: 16)),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.red,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Exit', style: TextStyle(color: AppColors.white, fontSize: 16)),
                                SizedBox(width: 6),
                                Image.asset('assets/icons/exit.png', height: 18),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => selectedTab = 0),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/list.png', height: 28, color: AppColors.yellow),
                        SizedBox(height: 6),
                        Text('Watch List', style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        if (selectedTab == 0) Container(height: 3, width: 150, color: AppColors.yellow),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () => setState(() => selectedTab = 1),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/folder.png', height: 35, color: AppColors.yellow),
                        SizedBox(height: 6),
                        Text('History', style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        if (selectedTab == 1) Container(height: 3, width: 150, color: AppColors.yellow),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/Empty.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
