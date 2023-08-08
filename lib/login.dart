// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_project/utils/routes.dart';



class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signin() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }


  var email;
  var password;

  bool changebutton = false;
  bool changesignupbutton = false;

  error() {}

  login() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final User? user = (await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      await //Future.delayed(Duration(seconds: 2));
          // ignore: use_build_context_synchronously
          Navigator.pushNamed(context, MyRoutes.loginpage, arguments: user);
    } else {
      //print("error");
    }
  }

  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 18.0,
            ),
            Image.asset("assists/images/login.png", fit: BoxFit.fill),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Correct Passwoord';
                        }
                        return null;
                      }
                  ),
                  TextFormField(
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter correct password';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
        GestureDetector(
          onTap: () async {
            await Future.delayed(Duration(seconds: 0));
            Navigator.pushNamed(context, MyRoutes.forget_pass);
          },
                // Container(
                      child: const Text.rich(
                        TextSpan(
                          text: "Forget Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ), // default text style

                        ),
                      )

                  )
                  ,

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.loginpage);
                    },
                    child: ElevatedButton(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "login",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: changebutton
                              ? BoxShape.circle
                              : BoxShape.rectangle,

                          //borderRadius: BorderRadius.circular(changebutton?50:8),
                        ),
                      ),
                      onPressed: login,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Container(
                      // alignment: Alignment.center,
                      //  padding: const EdgeInsets.all(8),
                      // color: Colors.red[300],
                      //child:  Text("Don't have an Account?"),
                      child: GestureDetector(
                          onTap: () async {
                            await Future.delayed(Duration(seconds: 0));
                            Navigator.pushNamed(context, MyRoutes.signuppage);
                          },
                          child: const Text.rich(
                            TextSpan(
                              text: "Don't have an Account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ), // default text style
                              children: <TextSpan>[
                                TextSpan(
                                  text: " Signup",
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          )
                          /* const Text("Don't have an Account?  Signup",style: TextStyle(
                       color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12,),), */
                          )),

                  /* SizedBox(
                 height:40,
                 child: InkWell(

                   onTap: () async{
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
