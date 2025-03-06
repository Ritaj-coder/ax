import 'package:arwa/colors.dart';
import 'package:arwa/screens/Browse%20TAb/browse_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/browse_cubit.dart';
import 'cubit/browse_state.dart';

class BrowseTab extends StatefulWidget {
  @override
  State<BrowseTab> createState() => _BrowseTabState();
}

BrowseViewModel viewModel = BrowseViewModel();

class _BrowseTabState extends State<BrowseTab> {

  final List<String> categories = [
    "Action",
    "Adventure",
    "Animation",
    "Biography"
  ];

  String selectedCategory = "Action";

  final List<String> imagePaths = [
    "assets/moviesList/movie1.jpg" , "assets/moviesList/movie2.jpg",
    "assets/moviesList/movie3.jpg","assets/moviesList/movie4.jpg","assets/moviesList/movie5.jpg",
    "assets/moviesList/movie6.jpg","assets/moviesList/movie7.jpg",
    "assets/moviesList/movie8.jpg" , "assets/moviesList/movie9.jpg",
    "assets/moviesList/movie10.jpg","assets/moviesList/movie11.jpg",
    "assets/moviesList/movie12.jpg","assets/moviesList/movie13.jpg","assets/moviesList/movie14.jpg",
    "assets/moviesList/movie15.jpg","assets/moviesList/movie16.jpg","assets/moviesList/movie17.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> BrowseViewModel()..getMoviesCategories(selectedCategory),
        child: BlocBuilder<BrowseViewModel,BrowseState>(
        builder: (context,state){
     return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories.map((category) {
                    bool isSelected = category == selectedCategory;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = category;
                          });
                          context.read<BrowseViewModel>().emit(BrowseLaodingState());
                          context.read<BrowseViewModel>().getMoviesCategories(selectedCategory);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSelected ? AppColors.yellow : Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: AppColors.yellow, width: 2),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            fontSize: 23,
                            color: isSelected ? Colors.black : AppColors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16),

              state is BrowseSuccessState ?
            Expanded(
                child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
         itemCount: imagePaths.length,
         itemBuilder: (context, index) {
           String movieslist = imagePaths[index % imagePaths.length];
           return BrowseList(movies: state.moviesResponse.data!.movies![index],
           imagePath: movieslist,);
         }
           )):
              Center(
                child: CircularProgressIndicator(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),

      );}),
    );
  }
}
