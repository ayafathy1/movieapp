import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BoxImage extends StatelessWidget{
  BoxImage( {Key?Key , required this.listview , required this.index});
  int index;
  var listview;
  @override
  Widget build(BuildContext context) {
    return   Padding(
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
                image: AssetImage(
                    "${listview.elementAt(index)['image']}"
                ),
                fit: BoxFit.cover,),
            ),

          ],
        ),
      ),
    );
  }

  elementAt(int index) {
    for(int i = 0 ; i >= 0 ; i++){
      index++;


    }
  }
}