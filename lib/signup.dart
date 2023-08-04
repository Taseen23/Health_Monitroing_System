///import 'package:firebase_core/firebase_core.dart';

import 'package:animated_background/animated_background.dart';
import 'package:animated_background/particles.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_project/widget.dart';
import 'package:particles_flutter/particles_flutter.dart';

import 'HomePage.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>
    with SingleTickerProviderStateMixin {
  var email;
  var password;

  register() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final User? user = (await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      await //Future.delayed(Duration(seconds: 2));
          // ignore: use_build_context_synchronously
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => HomePage(
                      //  user: user,
                      )));

      //////////Navigator.pushNamed(context, MyRoutes.homepage) ;
    } else {
      print("error");
    }
  }

  bool changesignupbutton = false;
  bool nevigate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      ///backgroundColor: Colors.cyan,
      //Image.asset('images/bgimage.jpg').color,

      body:
      Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //Colors.lightBlue,
           //Colors.blue
        //    Color(0xFFde9666),
          Color(0xFF7ebcd9),
            Color(0xFFbb9af5),
           // Color(0xFF0ccbed),
            //Color(0xFF12c44a),
           // Color(0xFFf0670c),
          ],
              begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
        )
      ),
      child:Center(
        child: Column(
          children: [


            SizedBox(
              height: 200.0,
            ),

            const Text(
              "Create a new account!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            //SizedBox(height: 200.0,),

            //Padding(padding: const EdgeInsets.all(20.0),),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField
                  //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                  (
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "First Name",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Last Name",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "User Email Address",
                  labelText: "Email Address",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter New Password",
                  labelText: "Create Password",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Confirm Password",
                  labelText: "Confirm Password",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            SizedBox(
              height: 40,
              child:

              ElevatedButton(
                onPressed: register,
                child:Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffd97348),
                  //Color(0xffeb6f1c),

                ),
              //  decoration: BoxDecoration(
               //   color: Colors.blue,
                //  shape: changesignupbutton?BoxShape.circle:BoxShape.rectangle,
                //const Text('signup'),
              ),
            ),


            /*

             InkWell(

               onTap:
            () async{
          setState(() {
            changesignupbutton=true;
          });

          await Future.delayed(Duration(seconds: 2));
          Navigator.pushNamed(context, MyRoutes.signuppage);
               },

               child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: changesignupbutton?50:150,
          height: 40,

          alignment: Alignment.center,
          child: changesignupbutton?Icon(Icons.done, color: Colors.white)
              : Text("Sign Up", style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: changesignupbutton?BoxShape.circle:BoxShape.rectangle,

            //borderRadius: BorderRadius.circular(changebutton?50:8),
          ),
               ),

             ),
               ),

              */

            ///firebaseUIButton(context, "Sign Up", () {
            //// FirebaseAuth.instance
            /////// .createUserWithEmailAndPassword(
            ///  email: _emailTextController.text,
            /// password: _passwordTextController.text)
            ////     .then((value) {
            ///print("Created New Account");
            ///    Navigator.pushNamed(context, MyRoutes.loginpage);
            ///}).onError((error, stackTrace) {
            /// print("Error ${error.toString()}");
            ///});

          ],
        ),
      ),
    ),
    );
  }
}
