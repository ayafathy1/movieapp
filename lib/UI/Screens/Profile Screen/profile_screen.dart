import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:movieapp/UI/Screens/Edit%20Profile/edit_profile.dart';
import 'package:movieapp/UI/Screens/Login%20Screen/login_screen.dart';
import 'package:movieapp/UI/Screens/Welcome%20Screen/welcome_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset('assets/images/Group 5 (1).png'),
                    SizedBox(width: 15,),
                    Text('Profile',style: TextStyle(color: Colors.grey.shade700,fontSize: 25,
                        fontWeight: FontWeight.w500),)
                  ],
                ),
                Row(children: [
                  Image.asset('assets/images/Profile.png'),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Demo Name',style: TextStyle(color: Colors.grey.shade700,
                          fontSize: 22,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text('demoemail@gmail.com',style: TextStyle(color: Colors.grey.shade700,
                          fontSize: 15,fontWeight: FontWeight.w500),),
                    ],
                  )
                ],),
                //SizedBox(height: 50,),
                Row(
                  children: [
                    Icon(Icons.person_outlined,size: 35,),
                    TextButton(onPressed: (){
                      Get.to(EditProfile());
                    }, child: Text('Edit Profile',
                      style: TextStyle(color: Colors.grey.shade700,fontSize: 20),)),
                    SizedBox(width: 120,),
                    InkWell(onTap: (){},
                        child: Icon(Icons.keyboard_arrow_down,size: 35,)),
                  ],),
                Text("ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ",
                  style: TextStyle(color: Colors.grey.shade200),),
                Row(children: [
                  Icon(Icons.logout,color: Colors.red,size: 30,),
                  SizedBox(width: 15,),
                  TextButton(onPressed: () {
                    logOut();
                    //Get.to(WelcomeScreen());
                  },
                    child: Text('Logout',style: TextStyle(color: Colors.red,fontSize: 22)),),


                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton( onPressed: () {  }, icon: Icon(Icons.home_outlined,
                      color: Colors.grey.shade700,size: 30,)),
                    IconButton( onPressed: () {  }, icon: Icon(Icons.search,
                      color: Colors.grey.shade700,size: 30,)),
                    // Image.asset('assets/images/noun-download-1220574.png',scale: 20,color: Colors.grey.shade700,),
                    IconButton( onPressed: () {  }, icon: Icon(Icons.download,
                      color: Colors.grey.shade700,size: 30,)),
                    IconButton( onPressed: () {  }, icon: Icon(Icons.bookmark_border_outlined,
                      color: Colors.grey.shade700,size: 30,)),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ]
                      ),
                      child: IconButton( onPressed: () {  }, icon: Icon(Icons.person_outlined,
                        color: Colors.grey.shade700,size: 30,),),
                    ),
                  ],)
              ],
            ),
            ),
        );
    }
}

 Future<void> logOut() async{
 await FirebaseAuth.instance.signOut().then((value) {
    Get.offAll(() =>  LoginScreen());
  });
}
