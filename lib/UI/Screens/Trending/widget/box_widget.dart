import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Box extends StatelessWidget{
  Box( {Key?Key , required this.listview , required this.index});
  int index;
  var listview;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),

        ),
        height:Get.height*0.2,
        width: Get.width*0.2,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              child: Image(
                height: 190,
                width: 100,
                image: AssetImage(
                    "${listview.elementAt(index)['image']}"
                ),
                fit: BoxFit.cover,),
            ),
            Column(
              children: [
                Row(
                  children: [

                    Text("${listview.elementAt(index)['title']} ", style: TextStyle(color: Colors
                        .black , fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 40, width: 130,),
                  ],
                ),

                Row(
                  children: [
                    Text("${listview.elementAt(index)['date']} ", style: TextStyle(color: Colors.black,
                    ),),
                    SizedBox(width: 170,)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("${listview.elementAt(index)['genere']} ", style: TextStyle(color: Colors
                        .black),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
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
    );
  }

  elementAt(int index) {
    for(int i = 0 ; i >= 0 ; i++){
      index++;


    }
  }
}