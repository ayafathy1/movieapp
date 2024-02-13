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
  void MovieData() async{

    MovieDataModel? data = await MovieServices.getMovieData();
    if (data== null){
      print("Error has been happen");
    }else{
      print(data?.results?[0]);
    }isLoading= false;
    update();
  }

  void TvData() async{
    TvDataModel? data = await TvServices.getTvData();
    if (data== null){
      print("Error has been happen");
    }else{
      print(data?.results?[0]);
    }
  }

}

