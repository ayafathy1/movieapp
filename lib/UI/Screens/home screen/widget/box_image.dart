import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/home%20screen/home%20screen%20controller/home_screen_controller.dart';


class BoxImage extends StatelessWidget{
  BoxImage( {Key?Key , required this.listview , required this.index});
  int index;
  var listview;
  @override
  Widget build(BuildContext context) {
    return   GetBuilder(
        init: HomeScreenController(),
        builder: (HomeScreenController controller){



      return Padding(
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