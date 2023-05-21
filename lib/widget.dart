import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
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

              accountEmail: Text("taseenalam13@gmail.com"),
              accountName: Text("Taseen Alam Dehan"),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage("assists/taseen/taseen/1682890714860.png"),
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
                CupertinoIcons.home,
                color: Colors.black87,
              ),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.black87,
              ),
              ),
            )

          ],
        ),
  );

  }

}

