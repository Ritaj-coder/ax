

class Endpoints {

  late int movieId ;

  static const String signup = "/auth/register" ;
  static const String login = "/auth/login" ;
  static const String movielist = "/api/v2/list_movies.json" ;

  static String moviedetails(int movieID) {
    return '/api/v2/list_movies.json$movieID';
  }
}