
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:splash_view/source/presentation/presentation.dart';

import '../Welcome Screen/welcome_screen.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SplashView(
      backgroundColor: Colors.transparent,
      duration: Duration(seconds: 7),
      done: Done(WelcomeScreen()),
      logo: Image(image: AssetImage('assets/images/Logo.png')),
    );
  }

}