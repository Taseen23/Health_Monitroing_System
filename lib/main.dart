import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_project/home_page1.dart';
import 'package:test_project/login.dart';
import 'package:test_project/signup.dart';
import 'package:test_project/utils/routes.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HEALTH_MONITORING());
}

class HEALTH_MONITORING extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LoginPage(),
      routes: {
        MyRoutes.homepage: (Context)  => LoginPage(),
        MyRoutes.loginpage : (Context) => HomePage(),
        MyRoutes.signuppage: (Context)  => SignupPage(),



      },
    ) ;



  }

}

