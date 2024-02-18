
// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../Widgets/custom_text_form_field_widget.dart';
import '../controller/sign_up_controller.dart';


// ignore: use_key_in_widget_constructors
class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SignUpController(),
    builder: (SignUpController controller) {
      return SingleChildScrollView(
          child: Form(
            key: controller.formkey,
            child: Column(
                children: <Widget>[
                  Container(
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 1, right: 300),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Name',
                            style:
                            TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.white)
                        )
                    ),
                  ),
                  CustomTextFormFieldWidget
                    (Controller: controller.usernameController,
                    validator: controller.usernameValidator,
                    keyboardType: TextInputType.name,
                    textfieldHint: "Enter Your full name",
                    ispasswordField: false,
                    obscureText: false,
                    SuffixColor: Colors.transparent,
                    FillColor: Colors.white38,),
                  Text(
                    'Email                                                                        ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),

                  CustomTextFormFieldWidget
                    (Controller: controller.emailaddressController,
                    validator: controller.emailValidator,
                    keyboardType: TextInputType.emailAddress,
                    textfieldHint: "Enter Your Email",
                    ispasswordField: false,
                    obscureText: false,
                    SuffixColor: Colors.transparent,
                    FillColor: Colors.white38,),
                  Text(
                    'phone no                                                                  ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  CustomTextFormFieldWidget(
                    Controller: controller.phoneController,
                    validator: controller.phoneValidator,
                    keyboardType: TextInputType.phone,
                    textfieldHint: "Enter Your phone number",
                    ispasswordField: false,
                    obscureText: false,
                    SuffixColor: Colors.transparent,
                    FillColor: Colors.white38,),

                  Text(
                    'password                                                                 ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  CustomTextFormFieldWidget(
                    Controller: controller.passwordController,
                    validator: controller.passwordValidator,
                    keyboardType: TextInputType.visiblePassword,
                    textfieldHint: "Enter Your Password",
                    ispasswordField: true,
                    obscureText: true,
                    SuffixColor: Colors.transparent,
                    FillColor: Colors.white38,),

                  Text(
                    '    confirm password                                                                 ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  CustomTextFormFieldWidget(
                    Controller: controller.confirmpasswordController,
                    validator: controller.confirmpasswordValidator,
                    keyboardType: TextInputType.visiblePassword,
                    textfieldHint: "Enter Your Password",
                    ispasswordField: true,
                    obscureText: true,
                    SuffixColor: Colors.transparent,
                    FillColor: Colors.white38,),
                ]
            ),
          ));
    });
    }
  }
