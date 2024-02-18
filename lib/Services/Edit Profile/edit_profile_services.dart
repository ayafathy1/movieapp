// ignore_for_file: avoid_print

import 'package:movieapp/Models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_database/firebase_database.dart';


class EditProfileServies{


  final DatabaseReference _profileRef =
  FirebaseDatabase.instance.ref().child('Profile');
  Future<void> saveToDo(ProfileModel profile) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? userId = prefs.getString('uid');
    _profileRef.child(userId??"").push().set(profile.toJson());
  }
  Future<List<ProfileModel>> fetchData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userId = prefs.getString('uid');

    final snapshot   = await _profileRef.child(userId??"").get();

    print(snapshot.value); // to debug and see if data is returned

    List<ProfileModel> profileInfo = [];

    final Map<dynamic, dynamic>  map = snapshot.value as Map<dynamic, dynamic>;
    map.forEach((key, value) {
      final profileData = ProfileModel.fromMap(value);

      profileInfo.add(profileData);
    });

    return profileInfo;
  }  }

