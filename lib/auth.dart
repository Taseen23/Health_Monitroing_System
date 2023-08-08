import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_project/HomePage.dart';
import 'package:test_project/login.dart';

class Authpage extends StatelessWidget {
  const Authpage ({ Key? key}) : super( key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if (snapshot.hasData){
              return HomePage();

            }else {
              return LoginPage();

            }
          }


      ),
    );
  }

}