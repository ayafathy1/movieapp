 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movieapp/Models/profile_model.dart';
import 'package:movieapp/Services/Edit%20Profile/edit_profile_services.dart';
import 'package:movieapp/UI/Screens/Edit%20Profile/edit_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileController extends GetxController{


  final  formkey =  GlobalKey<FormState>();
  final emailaddressController =  TextEditingController();
  final fullnameController =  TextEditingController();
  final passwordController =  TextEditingController();
  final phonenumberController =  TextEditingController();

  EditProfileServies services = EditProfileServies();

  bool isLoading = true;
  @override
  onInit()  {
    super.onInit();
    getProfile();

  }
  List<ProfileModel> profileInfo = [];
  getProfile() async {
    profileInfo =  services as List<ProfileModel>;
    isLoading= false;
    update();
  }

  saveProfileData() async {
    await EditProfileServies().saveToDo(ProfileModel(
        FullName:fullnameController.text ,
        Password:passwordController.text ,
        Email:emailaddressController.text ,
        PhoneNumber: phonenumberController.text));
    getProfile();
    fullnameController.clear();
    passwordController.clear();
    emailaddressController.clear();
    phonenumberController.clear();
    update();
   //  Get.off(EditProfile());
   // Get.to(EditProfile());
  }

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

  String? phoneValidator (String? phone) {
    if (RegExp(
        r"^\+?0[0-9]{10}$")
        .hasMatch(phone!)) {

    }
    else {
      return "   Enter Correct Phone Number";
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
    fullnameController.dispose();
    phonenumberController.dispose();
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



}