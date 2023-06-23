import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_project/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';




class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

    var email;
    var password;
    register() async {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      final User? user = (await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password)).user;
      if (user != null) {
        await //Future.delayed(Duration(seconds: 2));
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, MyRoutes.homepage) ;
      }
      else {
        print("error");
      }
    }


    bool changesignupbutton = false;
    bool nevigate = false;
    @override
    Widget build(BuildContext context) {
      return Material(


        child: Column(children: [
          SizedBox(height: 200.0,),
          Text(
            "Create a new account!",

            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),


          //SizedBox(height: 200.0,),

          //Padding(padding: const EdgeInsets.all(20.0),),
          Padding(padding: const EdgeInsets.symmetric(
              horizontal: 32.0, vertical: 16.0),),
          SizedBox(height: 20.0,),
          SizedBox(
            width: 300,
            child: TextFormField
            //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
              (decoration:
            InputDecoration(
              hintText: "Enter Username",
              labelText: "First Name",
            ),
            ),
          ),
          SizedBox(height: 20.0,),
          SizedBox(
            width: 300,
            child: TextFormField
              (decoration:
            InputDecoration(
              hintText: "Enter Username",
              labelText: "Last Name",
            ),
            ),
          ),
          SizedBox(height: 20.0,),
          SizedBox(
            width: 300,
            child: TextFormField
              (
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },

              decoration:
              InputDecoration(
                hintText: "User Email Address",
                labelText: "Email Address",
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          SizedBox(
            width: 300,
            child: TextFormField
              (
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },

              obscureText: true,
              decoration:
              InputDecoration(
                hintText: "Enter New Password",
                labelText: "Create Password",
              ),

            ),
          ),
          SizedBox(height: 20.0,),
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
          SizedBox(height: 20.0,),


          SizedBox(
            height: 40,

            child:
            ElevatedButton(
              onPressed: register,

              child:
              const Text('signup'),


            ),


          ),

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


      );
    }
  }








