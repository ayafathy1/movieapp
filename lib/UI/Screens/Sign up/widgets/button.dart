
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: (){

          // if (_formKey.currentState.validate()) {_formKey.currentState.save();}
        },
        child : Center(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 350,
            decoration: BoxDecoration(color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),topRight: Radius.circular(40),
                    bottomRight: Radius.circular(80),bottomLeft: Radius.circular(40))
            ),
            child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 22),),

          ),
        ),

        );
    }
}