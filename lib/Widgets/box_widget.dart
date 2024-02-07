
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Box extends StatelessWidget{
  Box( {super.key, Key?Key , required this.listview , required this.index});
  int index;
  var listview;
  @override
  Widget build(BuildContext context) {
    return   Padding(
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
                  image: AssetImage(
                      "${listview.elementAt(index)['image']}"
                  ),
                  fit: BoxFit.cover,),
              ),
              Column(
                children: [
                  Row(
                    children: [
          
                      Text("${listview.elementAt(index)['title']} ", style: const TextStyle(color: Colors
                          .black , fontSize: 20,
                          fontWeight: FontWeight.bold),),
                      const SizedBox(height: 40, width: 130,),
                    ],
                  ),
          
                  Row(
                    children: [
                      Text("${listview.elementAt(index)['date']} ", style: const TextStyle(color: Colors.black,
                      ),),
                      const SizedBox(width: 170,)
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("${listview.elementAt(index)['genere']} ", style: const TextStyle(color: Colors
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

  elementAt(int index) {
    for(int i = 0 ; i >= 0 ; i++){
      index++;


    }
  }
}