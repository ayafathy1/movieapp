

// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseAuthService{

  // ignore: prefer_final_fields
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email ,String password) async{

    try {

      // ignore: non_constant_identifier_names
      UserCredential Credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('counter', Credential.user?.uid??"");

      return Credential.user;
    }
    catch(e){
      print(" Some Error Occured");

    }
    return null ;

  }



  Future<User?> signInWithEmailAndPassword(String email ,String password) async{

    try {

      // ignore: non_constant_identifier_names
      UserCredential Credential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('counter', Credential.user?.uid??"");

      return Credential.user;
    }
    catch(e){
      print(" Some Error Occured");

    }
    return null ;

  }

}