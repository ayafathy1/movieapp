import 'package:dio/dio.dart';
import 'package:movieapp/Models/tv_data_model.dart';

class TvServices{


  static Future<TvDataModel?>getTvData()async{final dio = Dio();
  Response response;

  try{
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["authorization"] = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTQ5YTBlMDliMDZmYmM4N2NhY2ZiZWY0YzUwNDk2MyIsInN1YiI6IjYwNjczMjU2OTQwOGVjMDA3OGFhZDU3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cc6geu9ql9U2MkchIXPko0pu8_GpNFZGHjp00kjz5I4";
    response = await dio.get('https://api.themoviedb.org/3/discover/tv?include_adult=false&include_null_first_air_dates=false&language=en-US&page=1&sort_by=popularity.desc');
    return TvDataModel.fromJson(response.data);
  }catch(e){
    print(e.toString());
    return null;
  }


  }

}