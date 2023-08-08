
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Heart_Bit_Rate extends StatefulWidget {
  // const Heart_Bit_Rate({ super.key });

  @override
  State<Heart_Bit_Rate> createState() => _Heart_Bit_RateState();
}

class _Heart_Bit_RateState extends State<Heart_Bit_Rate> {
  final _userStream =
      FirebaseFirestore.instance.collection("heartbit").snapshots();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Heart Bit Rate'),
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
                     subtitle: Text('${docs[index]['BPM']} '),
                    ),
                    );
                  });
            })
        /*FutureBuilder(
       future: getdata(),
        builder: (_, snapshot){
         return ListView.builder(
           itemCount: snapshot.data.length,
             itemBuilder: (_, index){
             DocumentSnapshot data= snapshot.data[index];
                return ListTile(
                  title: Text(data["Bit Rate"]),
                );
             }
         );

        }
        ), */
        );
  }
}
