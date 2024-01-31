import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:movieapp/UI/Screens/Login%20Screen/login_screen.dart';


class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
       Container(
         decoration: BoxDecoration(
           image: DecorationImage(image:AssetImage('assets/images/Welcome Image.png'),
           fit: BoxFit.cover,
           )
         ),
         ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: BlurryContainer
         (
         borderRadius: BorderRadius.all(Radius.circular(35)),
         elevation: 0,
         color: Colors.transparent,
         width: 400,
           height: 300,
           blur: 10,
           child: Column(
         children: [
           Text("Welcome To App" , style: TextStyle(color: Color(0xff222222) , fontSize: 30 ,fontWeight: FontWeight.w400),),
           SizedBox(height: 30,),
           Row(
             children: [
               Text("        This is an app for all different types of movies " , style: TextStyle(color: Color(0xff222222)),),
             ],
           ),
           Row(children: [Text("            You can find here all what you need " ,style: TextStyle(color: Color(0xff222222)))],),

              SizedBox(height: 50,),
             CustomElevatedButtonWidget(text: "Get Started", textColor: Color(0xff222222), onPressed:() { Get.to(LoginScreen());})

         ],
       )),
     )
      ],
      ),
    );
  }

}