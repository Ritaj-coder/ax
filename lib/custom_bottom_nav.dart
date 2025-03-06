import 'package:flutter/material.dart';
import 'package:arwa/screens/Browse%20TAb/browse_tab.dart';
import 'package:arwa/screens/Home%20Tab/home_tab.dart';
import 'package:arwa/screens/ProfileScreen.dart';
import 'package:arwa/screens/Search%20Tab/search_tab.dart';
import 'colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  static const String routename = "main";

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  final List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    ProfileScreen(),
  ];

  final List<String> _iconPaths = [
    'assets/icons/home.png',
    'assets/icons/search.png',
    'assets/icons/explore.png',
    'assets/icons/Profiel.png',
  ];

  static const Color darkGrey = Color(0xFF282A28);

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: darkGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_iconPaths.length, (index) {
              return GestureDetector(
                onTap: () => _onItemTapped(index),
                child: Image.asset(
                  _iconPaths[index],
                  width: 30,
                  height: 30,
                  color: selectedIndex == index ? Colors.yellow : Colors.white,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
