
import 'dart:convert';

import 'package:arwa/data/api_endpoints.dart';
import 'package:arwa/data/model/Response/MoviesDetails.dart';
import 'package:arwa/data/model/Response/MoviesResponse.dart';
import 'package:http/http.dart' as http;

import 'api_name.dart';
import 'model/Reguest/LoginRequest.dart';
import 'model/Reguest/RegisterRequest.dart';
import 'model/Response/LoginResponse.dart';
import 'model/Response/RegisterResponse.dart';

class ApIManager {

  static Future<RegisterResponse> register(String name,
      String email,
      String password,
      String confirmPassword,
      String phone , int avaterID ) async {
    Uri url = Uri.https(ApiName.baseURL, Endpoints.signup,

    );
    var registerRequest = RegisterRequest(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        phone: phone ,
      avaterId: avaterID
    );
    try {
      var response = await http.post(url,
          body: registerRequest.toJson());

      var bodyString = response.body;
      print("Response Status: ${response.statusCode}");
      print("Response Body: ${response.body}");

      ///String
      var json = jsonDecode(bodyString);
      ///turn it to json
      return RegisterResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<LoginResponse> login (String email , String password) async {
    Uri url = Uri.https(ApiName.baseURL , Endpoints.login);
    var loginRequest = LoginRequest(email: email, password: password);

    try {
      var response = await http.post(url, body: loginRequest.toJson());
      var loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
      // SharedPreferenceutils.SaveData(key: 'token', value: loginResponse.token);
      return loginResponse ;
    }
    catch(e){
      throw e ;
    }

  }

  static Future<MoviesResponse> getAllMovies(String genres) async{
    Uri url = Uri.https(ApiName.basemovie,Endpoints.movielist,
    {
      "genres" : genres.toLowerCase()
    });

    try {
      var response = await http.get(url);

      var bodystring = response.body ;
      var json = jsonDecode(bodystring);
      return MoviesResponse.fromJson(json);
    }
    catch(e){
      throw e ;
    }
  }

  static Future<MoviesDetails> getMovieDetails(int movieId) async {
    Uri url = Uri.https(ApiName.basemovie,Endpoints.moviedetails(movieId),);

    try {
      var response = await http.get(url);

      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return MoviesDetails.fromJson(json);
    } catch (e) {
      throw e;
    }
  }


}