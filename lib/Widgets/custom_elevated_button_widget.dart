import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget{
  CustomElevatedButtonWidget({Key?key, required this.text, required this.textColor , required this.onPressed }): super (key: key);

  final String text;
  final Color textColor;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
      height: 50,
      child: ElevatedButton(onPressed: (){
        onPressed!();
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
