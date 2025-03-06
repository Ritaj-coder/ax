
import 'package:arwa/data/api_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/Response/MoviesResponse.dart';
import 'browse_state.dart';


class BrowseViewModel extends Cubit<BrowseState>{

  BrowseViewModel():super(BrowseInitialState());

  List<Movies> movieslist = [] ;
  List<Movies> filteredMovies = [];

  void getMoviesCategories (String genres) async{

    try {
      emit(BrowseLaodingState());
      var response = await ApIManager.getAllMovies(genres);

      print('Raw API response: ${response.toJson()}');

      if(response.status != "ok" || response.data == null || response.data!.movies!.isEmpty){
        // print('API Error: ${response.status_message}');
        emit(BrowseErrorState(failures: response.statusMessage ?? "Unknown error"));
      }
      else {

        movieslist = response.data!.movies ?? [];
        filteredMovies = List.from(movieslist);
        if(!isClosed) {
          emit(BrowseSuccessState( moviesResponse: response,filteredMovies: filteredMovies));
        }
      }
    } catch (e) {
      print('Exception: $e');
      if(!isClosed) {
        emit(BrowseErrorState(failures: e.toString()));
      }
    }
  }
  void searchMovies(String query) {
    if (query.isEmpty) {
      filteredMovies = List.from(movieslist);
    } else {
      filteredMovies = movieslist.where((movie) =>
          movie.titleLong!.contains(query.toLowerCase())).toList();
    }

    emit(BrowseSuccessState(moviesResponse: MoviesResponse(data: Data(movies: movieslist)), filteredMovies: filteredMovies));
  }

}