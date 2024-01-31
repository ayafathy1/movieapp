import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../UI/Screens/Forgot Password/controller/forgot_password_controller.dart';
import '../UI/Screens/Profile Screen/profile_screen.dart';

class CustomButton extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final email_Controller = TextEditingController();
  static final auth = FirebaseAuth.instance;
  CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPassController>(
        init: ForgotPassController(),
        builder: (ForgotPassController controller){
          return  InkWell(
            onTap: () async {

              //await Services.auth.resetPassword(email: email);
              // if (_formKey.currentState.validate()) {_formKey.currentState.save();}
              //if (formkey.currentState!.validate()){}

              if (controller.formkey.currentState!.validate()) {
                controller.resetPassword(email: email_Controller.text);
              }
              Get.to(()=>ProfileScreen());


            },
            child : Center(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 350,
                decoration: BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),topRight: Radius.circular(40),
                        bottomRight: Radius.circular(80),bottomLeft: Radius.circular(40))
                ),
                child: Text('continue',style: TextStyle(color: Colors.white,fontSize: 22),),
              ),
            ),

          );
        } ) ;

  }
  Future resetPassword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      //Utils.showSnackbar("sent");
    } catch (e) {
      print(e);
    //Utils.showSnackbar(e.message);
    // showError(title: '...', error: e);
    }
    }
}
