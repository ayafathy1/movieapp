import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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