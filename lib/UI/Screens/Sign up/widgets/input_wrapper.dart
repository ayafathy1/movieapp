import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/Sign%20up/controller/sign_up_controller.dart';
import 'package:movieapp/Widgets/custom_elevated_button_widget.dart';
import 'Input_field.dart';
import 'button.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SignUpController(),
        builder: ( SignUpController controller ){
      return
        Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
          child: Column(
          children: <Widget>[
          SizedBox(height: 10,),
    Container(

    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10)
    ),
    child: InputField(),
    ),
    SizedBox(height: 5,),
    CustomElevatedButtonWidget(text: "Sign Up", textColor: Colors.black, onPressed:(){
    if (controller.formkey.currentState!.validate()) {
    controller.signUp();
    };},



    ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Already have an account? sign in',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
              ),
            ),    ],
    ),
    ),
    );
    });
    }
  }

