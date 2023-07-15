import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_project/HomePage.dart';
import 'package:test_project/login.dart';
import 'package:test_project/profile.dart';
import 'package:test_project/signup.dart';
import 'package:test_project/Paremeters%20Page/temparature.dart';
import 'package:test_project/utils/routes.dart';
import 'Paremeters Page/Oxygen_level.dart';
import 'Paremeters Page/heart_bitrate.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(test_project());
}

class test_project extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        MyRoutes.homepage: (Context)  => LoginPage(),
        MyRoutes.loginpage : (Context) => HomePage(),
        MyRoutes.signuppage: (Context)  => SignupPage(),
        MyRoutes.heartbitrate: (Context)  => Heart_Bit_Rate(),
        MyRoutes.oxygen_level: (Context)  => Oxygen_Level(),
        MyRoutes.temparature: (Context)  => Temparature(),
        MyRoutes.profile: (Context)  => profile(),




      },
    ) ;



  }

}

