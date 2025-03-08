
import '../../../data/model/Response/MoviesDetails.dart';

abstract class MovieOfCategoriesState{}

class MovieOfCategoriesInitialState extends MovieOfCategoriesState{}

class  MovieOfCategoriesLaodingState extends MovieOfCategoriesState{}

class  MovieOfCategoriesSuccessState extends MovieOfCategoriesState{

  MoviesDetails moviesdetailsResponse ;
  MovieOfCategoriesSuccessState({required this.moviesdetailsResponse});
}

class  MovieOfCategoriesErrorState extends MovieOfCategoriesState{

  String failures ;
  MovieOfCategoriesErrorState({required this.failures});
}