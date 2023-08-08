import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Oxygen_Level extends StatefulWidget {
  // const Heart_Bit_Rate({ super.key });

  @override
  State<Oxygen_Level> createState() => Oxygen_LevelState();
}
class Oxygen_LevelState extends State<Oxygen_Level> {
  final _userStream =
  FirebaseFirestore.instance.collection("OLS").snapshots();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oxygen level"),
      ),
      body: StreamBuilder(
          stream: _userStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Connection Errors');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Loading...');
            }

            var docs = snapshot.data!.docs;
            //  return Text('${docs.length}');
            return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child:ListTile(
                      leading: const Icon(Icons.account_circle),
                      title: Text('${docs[index]['Name']}'),
                      subtitle: Text('${docs[index]['OLS']} '),
                    ),
                  );
                });
          }),
    );
  }
}
/**
    child: SingleChildScrollView(
    child: Column(children: [
    Text(
    "Heart Bit Rate",
    style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),


    ]
    )


    )


    );


    }


    }
 */
