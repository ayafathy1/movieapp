import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../Models/movie_data_model.dart';
import '../../../../Services/movie_services/movie_services.dart';


class MoviesController extends GetxController{

  late MovieDataModel data ;
  void getdata() async
  {
    MovieDataModel? data = await MovieServices.getMovieData();
    if(data == null)
    {
      print("some error occured");
    }else{
      print(data.results?[0]);
    }
    }}