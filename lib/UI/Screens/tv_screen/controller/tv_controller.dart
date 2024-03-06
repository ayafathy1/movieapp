// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../Models/tv_data_model.dart';
import '../../../../Services/tv_services/tv_services.dart';


class TvController extends GetxController{

  late TvDataModel? data ;
  bool isLoading = true;
  ScrollController TvScrollController = ScrollController();
  @override
  onInit()  {
    super.onInit();
    getdata();
  }
  void getdata() async
  {

    data = await TvServices.getTvData();
    if(data == null)
    {
      print("some error occured");
    }else{
      print(data?.results?[0]);
    } isLoading= false;
    update();
    }}

