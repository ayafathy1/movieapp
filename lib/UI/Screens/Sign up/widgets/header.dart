// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                height: 300,
                  width: 300,
                  child: Image(image: AssetImage('assets/images/mylogo.png'))),
              SizedBox(height: 5,),
              Center(
                child: Text("create your Account",
                  style: TextStyle(color: Colors.black, fontSize: 35 ,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
            ),
        );
    }
}