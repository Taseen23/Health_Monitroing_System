
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/utils/routes.dart';
///////import 'package:test_project/signup.dart';

class MyDrawer extends StatelessWidget {
  User user;
  MyDrawer ({this.user});
  @override
    Widget build(BuildContext context){
   // final imageURL = "https://www.facebook.com/photo/?fbid=3218877588377833&set=a.1374795032786107";
  return Drawer(
    child:
      ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding:EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    accountEmail: Text("20103264@iubat.edu"),
            /////////// accountEmail: Text(user.email.toString()),
              accountName: Text("Taseen Alam Dehan"),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage('https://www.facebook.com/messenger_media/?attachment_id=1330498180878882&message_id=mid.%24cAAAAAefgzh-PYvz2_GJMbeppyLJN&thread_id=100009361145553'),
               )             //   currentAccountPicture: Image.asset("assists/images/1664440310932.jpeg")
            )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black87,
              ),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.black87,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black87,
              ),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.black87,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.escape,
                color: Colors.black87,
              ),

              title:
              InkWell(
                onTap: () async{


                  await Future.delayed(Duration(seconds: 0));
                  Navigator.pushNamed(context, MyRoutes.homepage);
                },

                 child: Text("Log Out",textScaleFactor: 1.2,style: TextStyle(color: Colors.black87,

                ),
                ),
              )




            )

          ],
        ),
  );

  }

}


Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}


