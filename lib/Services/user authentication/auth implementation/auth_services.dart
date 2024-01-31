

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseAuthService{

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email ,String password) async{

    try {

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