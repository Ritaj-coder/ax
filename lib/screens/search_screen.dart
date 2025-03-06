import 'package:flutter/material.dart';
import '../colors.dart';
import '../custom_bottom_nav.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: AppColors.darkGrey,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Row(
            children: [
              Image.asset('assets/icons/search.png', height: 16),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      _searchResults = value.isEmpty
                          ? []
                          : ['Result 1', 'Result 2'];
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _searchResults.isEmpty
                ? Center(
              child: Image.asset(
                'assets/Empty.png',
                width: 400,
                height: 400,
              ),
            )
                : ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _searchResults[index],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),
          CustomBottomNavBar(),
        ],
      ),
    );
  }
}