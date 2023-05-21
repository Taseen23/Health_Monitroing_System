import 'package:flutter/material.dart';
import 'package:test_project/home_page1.dart';
import 'package:test_project/login.dart';
import 'package:test_project/signup.dart';
import 'package:test_project/utils/routes.dart';



void main() {
  runApp(First_project());
}

class First_project extends StatelessWidget {


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

