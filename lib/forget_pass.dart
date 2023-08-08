



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Forget_pass extends StatelessWidget {
  final _emailController = TextEditingController();
  void dispose() {
   // super.dispose();
    _emailController.dispose();
  }
  Future passwordReset() async {
    try{await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _emailController.text.trim());
    } on FirebaseAuthException catch (e) {
      print (e);
     // showDialog(context: context, builder: builder)

    }


  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(child:Center(
          child: Column(
              children: [
          Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
          SizedBox(
            height: 350.0,
          ),
                TextFormField(

                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Email",
                      labelText: "Give Recovery Email",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Correct Passwoord';
                      }
                      return null;
                    }
                ),
                SizedBox(
                  height: 20.0,
                ),

                SizedBox(
                  height: 40,
                  child:

                  ElevatedButton(
                    onPressed: passwordReset,
                    child:Text('Resend Password'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffd97348),
                      //Color(0xffeb6f1c),

                    ),

                  ),
                ),



              ]

      ),



    )
          ]
    )
                )
                )
    );
  }
}