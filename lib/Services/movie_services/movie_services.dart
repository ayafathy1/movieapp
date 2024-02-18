import 'package:dio/dio.dart';
import 'package:movieapp/Models/movie_data_model.dart';

class MovieServices{


  static Future<MovieDataModel?>getMovieData()async{final dio = Dio();
  Response response;

  try{
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["authorization"] = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTQ5YTBlMDliMDZmYmM4N2NhY2ZiZWY0YzUwNDk2MyIsInN1YiI6IjYwNjczMjU2OTQwOGVjMDA3OGFhZDU3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cc6geu9ql9U2MkchIXPko0pu8_GpNFZGHjp00kjz5I4";
    response = await dio.get('https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc');
    return MovieDataModel.fromJson(response.data);
  }catch(e){
   // ignore: avoid_print
   print(e.toString());
   return null;
  }


  }

}