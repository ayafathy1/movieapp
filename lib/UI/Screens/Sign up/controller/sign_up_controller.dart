

import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/Profile%20Screen/profile_screen.dart';


import '../../../../Services/user authentication/auth implementation/auth_services.dart';


class SignUpController extends GetxController {

  final  formkey =  GlobalKey<FormState>();

  final FirebaseAuthService _auth = FirebaseAuthService();

  final _usernameController =  TextEditingController();
  final _phoneController =  TextEditingController();
  final emailaddressController =  TextEditingController();
  final passwordController =  TextEditingController();

  String? usernameValidator (String? username){
    if (RegExp(
        r"^[\p{L} ,.'-]*$",
        caseSensitive: false, unicode: true, dotAll: true)
        .hasMatch(username!)
    ) {

    } else {
      return "   Enter Correct User Name";

    }
  }


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


  String? phoneValidator (String? phone) {
    if (RegExp(
        r"^\+?0[0-9]{10}$")
        .hasMatch(phone!)) {

    }
    else {
      return "   Enter Correct Phone Number";
    }
  }








  @override
  void dispose() {
    _usernameController.dispose();
    _phoneController.dispose();
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


  void signUp() async{

    String email = emailaddressController.text ;
    String password = passwordController.text;
    String confirmPassword = passwordController.text;

    User? user  = await _auth.signUpWithEmailAndPassword(email, password);


    if (user!= null){
      print(" User is Successfully created ");

      Get.to(ProfileScreen(
        // emailaddress: email, password: password
      ));

    } else {
      print("Some error Happened");
    }

  }


}
