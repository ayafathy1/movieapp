// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:movieapp/Models/tv_data_model.dart';
import 'package:movieapp/Utils/api_services.dart';
import 'package:movieapp/Utils/services.dart';

class TvServices{
  static ApiServices apiService  = ApiServices();

  static Future<TvDataModel?>getTvData()async{

    dynamic data = apiService.request(Services.tvEndPoint, Services.tvMethod ,
        // el headers 3obara 3n map(key and value)
        hedears:Services.tvHeaders
    );

    if (data != null){
      return TvDataModel.fromJson(data);
    }
    else{
      return null;
    }




  }

}