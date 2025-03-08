
import 'dart:math';
import 'dart:ui';
import 'package:arwa/screens/Browse%20TAb/cubit/browse_cubit.dart';
import 'package:arwa/screens/Browse%20TAb/cubit/browse_state.dart';
import 'package:arwa/screens/Home%20Tab/movie_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MovieDetailsScreen extends StatefulWidget {

  static const String routename = 'details' ;

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {

  final List<String> moviePosters = List.generate(
    17,
        (index) => 'assets/moviesList/movie${index + 1}.jpg',
  );

  BrowseViewModel viewModel = BrowseViewModel();

  List<String> getRandomMovies() {
    final random = Random();
    List<String> shuffledMovies = List.from(moviePosters)
      ..shuffle(random);
    return shuffledMovies.take(4).toList();
  }

  @override
  Widget build(BuildContext context) {
    // final genreId = ModalRoute
    //     .of(context)!
    //     .settings
    //     .arguments as String;
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child: MoviesDetailsContent(),
        )
    );
  }

}