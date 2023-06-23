
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/signup.dart';

class MyDrawer extends StatelessWidget {
  User? user;
  MyDrawer ({this.user});
  @override
    Widget build(BuildContext context){
   // final imageURL = "https://www.facebook.com/photo/?fbid=3218877588377833&set=a.1374795032786107";
  return Drawer(
    child:
      ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding:EdgeInsets.zero,
                child: UserAccountsDrawerHeader(

              accountEmail: Text("Taseen Alam Dehan"),
              accountName: Text("Taseen Alam Dehan"),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage('https://scontent.fdac7-1.fna.fbcdn.net/v/t39.30808-6/354257480_3361754970756760_7671974307845587493_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeErkZeGGIGCHNFWaPxgIYkEwnhRIZL5mELCeFEhkvmYQtKRwsXbVeebzdFuXwsK6pyb_ZmvjSaDzM94ihNCE1y5&_nc_ohc=mghJw1gZD98AX902HD9&_nc_pt=1&_nc_ht=scontent.fdac7-1.fna&oh=00_AfCvG87rOV7Efip7Y1LMBGZd9OOyXicafg3DXPQV3R0-pQ&oe=6499EC4B'),
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

                const Text("Log Out",textScaleFactor: 1.2,style: TextStyle(color: Colors.black87,
                ),
                ),




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


