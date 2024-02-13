import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movieapp/UI/Screens/Edit%20Profile/controller/edit_profile_controller.dart';
import 'package:movieapp/UI/Screens/Profile%20Screen/profile_screen.dart';
import 'package:movieapp/Widgets/custom_elevated_button_widget.dart';
import 'package:movieapp/Widgets/custom_text_form_field_widget.dart';

import '../Welcome Screen/welcome_screen.dart';

class EditProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: EditProfileController(),
        builder:( EditProfileController controller)

    {
      return   Scaffold(
      body:
      Container(
      width: Get.width,
      height: Get.height,
      color:Color(0xffDEE4E7) ,
      child: SingleChildScrollView(
      child:
      Form(
        key: controller.formkey,
      child: Column(
      children: [
      Row(
      children: [
      IconButton(onPressed: (){
      Get.to(ProfileScreen());
      }, icon: Icon(Icons.arrow_back) ,color: Color(0xff0A0A0A),),
      Text("Edit Profile" , style: TextStyle(color: Color(0xff0A0A0A) , fontWeight: FontWeight.w400 , fontSize: 20) ,),
    ],
    ),
        SizedBox(height: 20,),
         Image(image: AssetImage('assets/images/Profile.png')),
         SizedBox(height: 20,),
         CustomTextFormFieldWidget(Controller: controller.fullnameController, validator: controller.usernameValidator, keyboardType: TextInputType.name, textfieldHint: 'Full Name', ispasswordField: false, obscureText: false, SuffixColor: Colors.transparent, FillColor: Colors.grey.shade400,),
        CustomTextFormFieldWidget(Controller: controller.passwordController, validator: controller.passwordValidator, keyboardType: TextInputType.visiblePassword, textfieldHint: 'Password', ispasswordField: true, obscureText: true , SuffixColor: Colors.transparent,FillColor: Colors.grey.shade400),
        CustomTextFormFieldWidget(Controller: controller.emailaddressController, validator: controller.emailValidator, keyboardType: TextInputType.emailAddress, textfieldHint: 'Email', ispasswordField: false, obscureText: false , SuffixColor: Color(0xff222222),FillColor: Colors.grey.shade400
        ),
        CustomTextFormFieldWidget(Controller: controller.phonenumberController, validator: controller.phoneValidator, keyboardType: TextInputType.phone, textfieldHint: 'Phone', ispasswordField: false , SuffixColor: Colors.transparent ,FillColor: Colors.grey.shade400
            , obscureText: false),

          SizedBox(height: 50,),
         CustomElevatedButtonWidget(
         text: "Update", textColor: Colors.white, onPressed:(){
           if (controller.formkey.currentState!.validate()) {
             controller.saveProfileData();
           }
         }),
        TextButton(onPressed: (){
          Get.to(ProfileScreen());
        }, child: Text("Cancel" , style: TextStyle(color: Color(0xff666666)),))
    ],
    ),
    ),
    ),
    ),
    );
    } );
    }
  }

