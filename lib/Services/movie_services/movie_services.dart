
import 'package:movieapp/Models/movie_data_model.dart';
import 'package:movieapp/Utils/api_services.dart';
import 'package:movieapp/Utils/services.dart';


class MovieServices{
  static ApiServices apiService  = ApiServices();

  static Future<MovieDataModel?>getMovieData()async{
    dynamic data = apiService.request(Services.movieEndPoint, Services.movieMethod ,
        // el headers 3obara 3n map(key and value)
        hedears:Services.movieHeaders
    );

    if (data != null){
      return MovieDataModel.fromJson(data);
    }
    else{
      return null;
    }

  }

}