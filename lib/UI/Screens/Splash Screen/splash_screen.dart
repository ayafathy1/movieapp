import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/pages/pages.dart';
import 'package:splash_view/source/presentation/presentation.dart';

import '../Welcome Screen/welcome_screen.dart';

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