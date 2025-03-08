
import 'package:arwa/data/api_data.dart';
import 'package:arwa/data/model/Response/MoviesDetails.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'movie_details_state.dart';


class MovieDetailsViewModel extends Cubit<MovieOfCategoriesState> {

  MovieDetailsViewModel():super(MovieOfCategoriesInitialState());

  List<Movie> moviedetails = [];

  void getAllMovies(int genreId) async{

    try {
      emit(MovieOfCategoriesLaodingState());
      var response = await ApIManager.getMovieDetails(genreId);
      if(response.status != "ok" || response.data == null ){
        // print('API Error: ${response.status_message}');
        emit(MovieOfCategoriesErrorState(failures: response.statusMessage ?? "Unknown error"));
      }
      else {
        moviedetails = response.data!.movie as List<Movie>   ;
        emit(MovieOfCategoriesSuccessState(moviesdetailsResponse: response));
      }
    }
    catch(e){
      emit(MovieOfCategoriesErrorState(failures: e.toString()));
    }
  }

}