// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:movieapp/Models/movie_data_model.dart';
import 'package:movieapp/Models/tv_data_model.dart';
import 'package:movieapp/Services/movie_services/movie_services.dart';
import 'package:movieapp/Services/tv_services/tv_services.dart';



class HomeScreenController extends GetxController{
   TvDataModel? data ;
  bool isLoading = true;
  @override
  onInit()  {
    super.onInit();
    MovieData();
    TvData();
  }
  // ignore: non_constant_identifier_names
  void MovieData() async{

    MovieDataModel? data = await MovieServices.getMovieData();
    if (data== null){
      print("Error has been happen");
    }else{
      print(data?.results?[0]);
    }isLoading= false;
    update();
  }

  // ignore: non_constant_identifier_names
  void TvData() async{
    TvDataModel? data = await TvServices.getTvData();
    if (data== null){
      print("Error has been happen");
    }else{
      print(data?.results?[0]);
    }
  }

}

