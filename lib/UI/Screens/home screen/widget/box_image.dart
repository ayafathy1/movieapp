import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/home%20screen/home%20screen%20controller/home_screen_controller.dart';


// ignore: must_be_immutable
class BoxImage extends StatelessWidget{
  // ignore: non_constant_identifier_names, use_key_in_widget_constructors
  BoxImage( {Key?Key , required this.listview , required this.index});
  int index;
  // ignore: prefer_typing_uninitialized_variables
  var listview;
  @override
  Widget build(BuildContext context) {
    return   GetBuilder(
        init: HomeScreenController(),
        builder: (HomeScreenController controller){



      return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),

        ),
        height:Get.height*0.2,
        //width: Get.width*0.2,
        child: Row(

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),

              child: Image(
                height: 200,
                width: 110,
                image: NetworkImage(
                    "https://api.themoviedb.org/3/movie/movie_id/images${controller.data?.results?[index].posterPath??""}"
                ),
                fit: BoxFit.cover,),
            ),

          ],
        ),
      ),
    );
  });
  }
  elementAt(int index) {
    for(int i = 0 ; i >= 0 ; i++){
      index++;


    }
  }
}