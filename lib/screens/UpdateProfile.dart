import 'package:flutter/material.dart';
import '../colors.dart';

class ProfileUpdateScreen extends StatefulWidget {
  @override
  _ProfileUpdateScreenState createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
  String selectedAvatar = 'assets/profiles/user1.png';
  final List<String> avatarList = [
    'assets/profiles/user1.png',
    'assets/profiles/user2.png',
    'assets/profiles/user3.png',
    'assets/profiles/user4.png',
    'assets/profiles/user5.png',
    'assets/profiles/user6.png',
    'assets/profiles/user7.png',
    'assets/profiles/user8.png',
    'assets/profiles/user9.png',
  ];

  void _showAvatarSelection() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: avatarList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedAvatar = avatarList[index];
                  });
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatarList[index]),
                    radius: 40,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/icons/arrow_left_yellow.png', width: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(right: 35),
            child: Text(
              'Pick Avatar',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.yellow,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: _showAvatarSelection,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(selectedAvatar),
                      radius: 70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            TextField(
              style: TextStyle(color: AppColors.white),
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/User.png', width: 24),
                hintText: 'John Safwat',
                hintStyle: TextStyle(color: AppColors.white),
                filled: true,
                fillColor: AppColors.darkGrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              style: TextStyle(color: AppColors.white),
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/phone.png', width: 24),
                hintText: '01200000000',
                hintStyle: TextStyle(color: AppColors.white),
                filled: true,
                fillColor: AppColors.darkGrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 14, color: AppColors.white),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Delete Account',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Update Data',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}