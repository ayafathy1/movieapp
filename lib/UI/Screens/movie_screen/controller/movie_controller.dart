// ignore_for_file: avoid_print

import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../../Models/movie_data_model.dart';
import '../../../../Services/movie_services/movie_services.dart';


class MoviesController extends GetxController{

  Future refresh() async{

  }

  late MovieDataModel? data ;
   bool isLoading = true;
   // ignore: annotate_overrides
   onInit()  {
     super.onInit();
     getdata();
   }
  void getdata() async
  {
     data = await MovieServices.getMovieData();
    if(data == null)
    {
      print("some error occured");
    }else{
      print(data?.results?[0]);

    }isLoading= false;
     update();
    }}