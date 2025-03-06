import 'package:arwa/screens/Browse%20TAb/browse_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../colors.dart';
import '../Browse TAb/cubit/browse_cubit.dart';
import '../Browse TAb/cubit/browse_state.dart';

class SearchTab extends StatefulWidget {
  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {

  final List<String> imagePaths = [
    "assets/moviesList/movie1.jpg" , "assets/moviesList/movie2.jpg",
    "assets/moviesList/movie3.jpg","assets/moviesList/movie4.jpg","assets/moviesList/movie5.jpg",
    "assets/moviesList/movie6.jpg","assets/moviesList/movie7.jpg",
    "assets/moviesList/movie8.jpg" , "assets/moviesList/movie9.jpg",
    "assets/moviesList/movie10.jpg","assets/moviesList/movie11.jpg",
    "assets/moviesList/movie12.jpg","assets/moviesList/movie13.jpg","assets/moviesList/movie14.jpg",
    "assets/moviesList/movie15.jpg","assets/moviesList/movie16.jpg","assets/moviesList/movie17.jpg"
  ];

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      BrowseViewModel()..getMoviesCategories("Action"),
      child: BlocBuilder<BrowseViewModel, BrowseState>(
          builder: (context, state) {
            final viewModel = context.read<BrowseViewModel>();

            return Scaffold(
              body: Column(
                children: [
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (query) {
                        viewModel.searchMovies(query);
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[900],
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),

                  // Movies Grid
                  Expanded(
                    child: state is BrowseSuccessState
                        ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: imagePaths.length, // Use filtered list
                        itemBuilder: (context, index) {
                          return BrowseList(
                            movies: state.filteredMovies[index],
                            imagePath: "assets/moviesList/movie${index + 1}.jpg",
                          );
                        })
                        : Center(
                      child: CircularProgressIndicator(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
