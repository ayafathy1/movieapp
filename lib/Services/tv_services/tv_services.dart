// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:movieapp/Models/tv_data_model.dart';
import 'package:movieapp/Utils/api_services.dart';
import 'package:movieapp/Utils/services.dart';

class TvServices{
  static ApiServices apiService  = ApiServices();

  static Future<TvDataModel?>getTvData()async{

    Map <String , dynamic> body = {
      "Accept" : "application/json",
      "authorization" :  "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTQ5YTBlMDliMDZmYmM4N2NhY2ZiZWY0YzUwNDk2MyIsInN1YiI6IjYwNjczMjU2OTQwOGVjMDA3OGFhZDU3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cc6geu9ql9U2MkchIXPko0pu8_GpNFZGHjp00kjz5I4",

    };

    dynamic data = await Dio().get(
        "https://api.themoviedb.org/3/discover/tv/${Services.movieEndPoint}",
        options: Options(
          // el headers 3obara 3n map(key and value)
          headers: body,
        )
    ) ;

    if (data != null){
      return TvDataModel.fromJson(data);
    }
    else{
      return null;
    }




  }

}