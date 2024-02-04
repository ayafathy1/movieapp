import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movieapp/UI/Screens/Login%20Screen/login_screen.dart';




class ForgotPassController extends GetxController {
  final formkey = GlobalKey<FormState>();
  final email_Controller = TextEditingController();
  final forgetPassController = TextEditingController();
  static final auth = FirebaseAuth.instance;
  // static late AuthStatus _status;

  onChanged(val){
    formkey.currentState?.validate();
  }


  String? emailValidator(String? value) {
    print(value);

    if (value!.isEmpty){
      return "Please Enter your Email";
    }else if
    (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value ))
    {
      return "Please Enter a Valid Email";

    }
    return null;
  }


  @override
  void dispose() {
    email_Controller.dispose();
    super.dispose();
  }

  void resetPassword() async {
    var forgotEmail = forgetPassController.text.trim();
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: forgotEmail)
          .then((value) =>
      { print('Email Sent'),
        Get.off(()=> LoginScreen())
      }
      );

    }on FirebaseAuthException catch (e) {
      print(e);

    }
  }



}
