import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(



      child : Column(children: [
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
            (decoration:
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
          width:300,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(

              hintText: "Enter Confirm Password",
              labelText: "Confirm Password",
            ),
          ),
        ),
        SizedBox(height: 20.0,),

    ],
    ),




    );
  }
}