import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movieapp/UI/Screens/home%20screen/home%20screen/home_screen.dart';
import 'package:movieapp/UI/Screens/movie_screen/movie_screen.dart';
import 'package:movieapp/UI/Screens/tv_screen/tv_screen.dart';
import 'firebase_options.dart';
import 'UI/Screens/Splash Screen/splash_screen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.transparent,
        home: HomeScreen()
    );
  }
}


// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.


