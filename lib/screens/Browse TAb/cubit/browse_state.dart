

import 'package:arwa/data/model/Response/MoviesResponse.dart';

abstract class BrowseState{}

class BrowseInitialState extends BrowseState{}

class BrowseLaodingState extends BrowseState{}

class BrowseSuccessState extends BrowseState{

  MoviesResponse moviesResponse ;
  final List<Movies> filteredMovies;
  BrowseSuccessState({required this.moviesResponse,
  required this.filteredMovies});
}

class BrowseErrorState extends BrowseState{

  String failures ;
  BrowseErrorState({required this.failures});
}