// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/UI/Screens/Login%20Screen/login_screen.dart';
import 'package:movieapp/Widgets/custom_elevated_button_widget.dart';
import '../../../Widgets/custom_text_field_widget.dart';
import '../Welcome Screen/welcome_screen.dart';
import 'controller/forgot_password_controller.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder <ForgotPassController>(
        init: ForgotPassController(),
        builder: (ForgotPassController controller){return
          Scaffold(
            body: Container(
              width: Get.width,
              height: Get.height,
              color:Color(0xffDEE4E7) ,
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: (){
                              Get.to(WelcomeScreen());
                            }, icon: Icon(Icons.arrow_back_sharp) ,color: Color(0xff0A0A0A),),
                            SizedBox(width: 10,),
                            Text('Forgot Password' , style: TextStyle(fontSize: 20 , ),),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: 350,
                          width: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                              AssetImage("assets/images/Group 8.png"),
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
                                CustomTextField(controller: controller.forgetPassController,
                                    onChanged: controller.onChanged, validator: controller.emailValidator,
                                    keyboardType: TextInputType.emailAddress, isPassField: false,  textFieldTitle: 'Enter your email'),
                                CustomElevatedButtonWidget(text: 'Continue', textColor: Colors.white, onPressed: (){
                                  if (controller.formkey.currentState!.validate()) {
                                    controller.resetPassword();
                                  }
                                }),
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
            ),
          );
    });

    }
}
