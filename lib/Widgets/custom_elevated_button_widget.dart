
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget{
  // ignore: prefer_const_constructors_in_immutables
  CustomElevatedButtonWidget({Key?key, required this.text, required this.textColor , required this.onPressed }): super (key: key);

  final String text;
  final Color textColor;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return  Container(
      width: 300,
      height: 50,
      child: ElevatedButton(onPressed: (){
        onPressed!();
      // ignore: sort_child_properties_last
      }, child:Text(text , style: TextStyle(color: textColor , fontSize: 15 , fontWeight: FontWeight.bold),),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80), bottomRight: Radius.circular(80),topRight: Radius.circular(40), bottomLeft: Radius.circular(40))),
          backgroundColor: Color(0xff666666),
        ),
      ),
    );
  }


}
