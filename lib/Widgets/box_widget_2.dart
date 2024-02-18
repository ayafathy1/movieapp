import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/movie_screen/controller/movie_controller.dart';


// ignore: must_be_immutable
class Box2 extends StatelessWidget{
  // ignore: non_constant_identifier_names
  Box2( {super.key, Key?Key , required this.listview , required this.index});
  int index;
  // ignore: prefer_typing_uninitialized_variables
  var listview;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: MoviesController(),
        builder: (MoviesController controller){

          return  Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),

              ),
              height:Get.height*0.2,
              width: Get.width*0.2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16)),
                      child: Image(
                        height: 190,
                        width: 100,
                        image:
                        NetworkImage("https://api.themoviedb.org/3/tv/series_id/season/season_number/images${controller.data?.results?[index].posterPath??""}"),
                        fit: BoxFit.cover,),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [

                            Text(controller.data?.results?[index].title??"", style: const TextStyle(color: Colors
                                .black , fontSize: 20,
                                fontWeight: FontWeight.bold),),
                            const SizedBox(height: 40, width: 130,),
                          ],
                        ),

                        Row(
                          children: [
                            Text(controller.data?.results?[index].releaseDate??"", style: const TextStyle(color: Colors.black,
                            ),),
                            const SizedBox(width: 170,)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            //genere
                            Text(controller.data?.results?[index].backdropPath??"", style: const TextStyle(color: Colors
                                .black),),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Row(
                          children: [
                            Image(image: AssetImage("assets/images/Watch list.png")),
                            SizedBox(width: 90,)
                          ],
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }

    );


  }

  elementAt(int index) {
    for(int i = 0 ; i >= 0 ; i++){
      index++;


    }
  }
}