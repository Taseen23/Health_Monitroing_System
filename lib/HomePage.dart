import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_project/utils/routes.dart';

import 'package:test_project/widget.dart';

class HomePage extends StatelessWidget {
  // User user;
  final user = FirebaseAuth.instance.currentUser!;
  // HomePage({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Health Monitoring"),
      ),
      body: Center(
          child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red[100],
              child: GestureDetector(
                onTap: () async {
                  await Future.delayed(Duration(seconds: 0));
                  Navigator.pushNamed(context, MyRoutes.profile);
                },
                child: const Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red[200],
              child: GestureDetector(
                onTap: () async {
                  await Future.delayed(Duration(seconds: 0));
                  Navigator.pushNamed(context, MyRoutes.heartbitrate);
                },
                child: const Text(
                  'Heart Bit Rate',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red[300],
              child: GestureDetector(
                onTap: () async {
                  await Future.delayed(Duration(seconds: 0));
                  Navigator.pushNamed(context, MyRoutes.oxygen_level);
                },
                child: const Text(
                  'Oxygen Level',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              color: Colors.red[400],
              child: GestureDetector(
                onTap: () async {
                  await Future.delayed(Duration(seconds: 0));
                  Navigator.pushNamed(context, MyRoutes.temparature);
                },
                child: const Text(
                  'Temperature',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              )),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            color: Colors.red[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            color: Colors.red[600],
            child: const Text('Revolution  is coming...'),
          ),
        ],
      )),
      drawer: MyDrawer(),
    );
  }
}
