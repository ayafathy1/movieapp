import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movieapp/UI/Screens/Login%20Screen/login_screen.dart';

import '../../../../Widgets/custom_button_widget.dart';

class ForgotPassController extends GetxController {
  final formkey = GlobalKey<FormState>();
  final email_Controller = TextEditingController();
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

  Future resetPassword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      //Utils.showSnackbar("sent");
    } catch (e) {
      print(e);
      //Utils.showSnackbar(e.message);
      // showError(title: '...', error: e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 50.0, bottom: 25.0),
              child: Form(
                key: formkey,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 250,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                          AssetImage("assets/images/Forgot password-amico 1.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 370,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40), topLeft: Radius.circular(40)
                          //,bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, top: 25,right: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            TextFormField(),
                            CustomButton(

                            ),
                            Center(
                                child: TextButton(
                                  onPressed: () {
                                    Get.to(LoginScreen());
                                  },
                                  child: Text(
                                    'back to login',
                                    style: TextStyle(fontSize: 22,color: Colors.black),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
        );
    }
}
