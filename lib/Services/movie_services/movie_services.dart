import 'package:dio/dio.dart';
import 'package:movieapp/Utils/api_services.dart';

import '../../Models/movie_data_model.dart';




class MovieServices{
  static ApiServices apiServices=ApiServices();
  static Future<MovieDataModel?>getMovieData() async {
    final dio = Dio();
    Response response;
    try{
      dio.options.headers["Accept"]="application/json";
      dio.options.headers["authorization"]="Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTQ5YTBlMDliMDZmYmM4N2NhY2ZiZWY0YzUwNDk2MyIsInN1YiI6IjYwNjczMjU2OTQwOGVjMDA3OGFhZDU3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cc6geu9ql9U2MkchIXPko0pu8_GpNFZGHjp00kjz5I4";
      response= await dio.get("https://api.themoviedb.org/3/discover/movie");
      return MovieDataModel.fromJson(response.data);
    }catch(e)
    {
      print(e.toString());
      return null;
    }



  }

}