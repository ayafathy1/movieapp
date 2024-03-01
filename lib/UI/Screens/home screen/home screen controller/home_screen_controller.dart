// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:movieapp/Models/movie_data_model.dart';
import 'package:movieapp/Models/tv_data_model.dart';
import 'package:movieapp/Services/movie_services/movie_services.dart';
import 'package:movieapp/Services/tv_services/tv_services.dart';



class HomeScreenController extends GetxController{
  TvDataModel? data ;
  bool isLoading = true;
  bool isDataEmpty = true;
  @override
  onInit()  {
    super.onInit();
    MovieData();
    TvData();
  }
  // ignore: non_constant_identifier_names
  void MovieData() async{
    isLoading = true;
    update();
    MovieDataModel? Moviedata = await MovieServices.getMovieData();
    if (Moviedata== null){
      isDataEmpty = true;
      update();
      print("Error has been happen");
    }else{
      print(Moviedata?.results?[0]);
    }isLoading= false;
    update();
  }

  // ignore: non_constant_identifier_names
  void TvData() async{
    isLoading = true;
    update();
    TvDataModel? Tvdata = await TvServices.getTvData();
    if (Tvdata== null){
      isDataEmpty = true;
      update();
      print("Error has been happen");
    }else{
      print(Tvdata?.results?[0]);
    }
    isLoading = false;
    update();
  }

}

