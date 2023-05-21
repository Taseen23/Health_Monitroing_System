import 'package:flutter/material.dart';
import 'package:test_project/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();

}



 class LoginPageState extends State<LoginPage> {
  bool changebutton=false;
  bool changesignupbutton=false;
   Widget build(BuildContext context) {
     return Material(
       child: SingleChildScrollView(
         child: Column(children: [
           Image.asset("assists/images/login.png", fit: BoxFit.fill),
           SizedBox(height: 20.0,),
           Text(
             "Welcome",
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
               color: Colors.black,
             ),
           ),
           SizedBox(height: 20.0,),
           Padding(
             padding: const EdgeInsets.symmetric(
                 horizontal: 32.0, vertical: 16.0),
             child: Column(children: [
               TextFormField(decoration: InputDecoration(
                 icon: Icon(Icons.person),
                 hintText: "Enter Username",
                 labelText: "Username",
               ),
               ),
               TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
                   icon: Icon(Icons.key),
                   hintText: "Enter Password",
                   labelText: "Password",
                 ),
               ),
               SizedBox(height: 20.0,),


                  InkWell(

                    onTap: () async{
                      setState(() {
                        changebutton=true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.loginpage);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                       width: changebutton?50:150,
                       height: 40,

                       alignment: Alignment.center,
                       child: changebutton?Icon(Icons.done, color: Colors.white)
                           : Text("login", style: TextStyle(
                           color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,),
                       ),
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         shape: changebutton?BoxShape.circle:BoxShape.rectangle,

                         //borderRadius: BorderRadius.circular(changebutton?50:8),
                     ),
                 ),

                  ),
               SizedBox(height: 20.0,),
               SizedBox(
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

             ],
             ),
           ),
         ],
         ),
       ),
     );
   }
 }







