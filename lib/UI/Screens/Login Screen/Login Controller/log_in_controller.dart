// ignore_for_file: body_might_complete_normally_nullable, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/home%20screen/home%20screen/home_screen.dart';

import '../../../../Services/user authentication/auth implementation/auth_services.dart';


class LogInController extends GetxController{
  final  formkey =  GlobalKey<FormState>();
  final FirebaseAuthService _auth = FirebaseAuthService();
  final emailaddressController =  TextEditingController();
  final passwordController =  TextEditingController();


  String? emailValidator (String? email) {
    if (RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(email!)) {

    }
    else {
      return "   Enter Correct Email";
    }
  }


  String? passwordValidator(String? password) {
    if (RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password!)) {

    } else {
      return "   Enter Correct password";
    }
  }



  @override
  void dispose() {

    emailaddressController.dispose();
    passwordController.dispose();
    super.dispose();
  }



  saveAndValidate() {
    var formdata = formkey.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print("valide");
    }
    else {
      print("not valide");
    }
  }


  void signIn() async{

    String email = emailaddressController.text ;
    String password = passwordController.text;
    User? user  = await _auth.signInWithEmailAndPassword(email, password);


    if (user!= null){


      // ignore: prefer_const_constructors
      Get.to(HomeScreen(
        //  emailaddress: email, password: password
      ));
    } else {
      print("Some error Happened");
    }

  }


}