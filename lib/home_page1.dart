import 'package:flutter/material.dart';

import 'package:test_project/widget.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text("Health Monitoring"),
      ),
        body: Center(
          child: GridView(
            
             
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,
              mainAxisSpacing: 10,
             ),
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                color: Colors.red[100],
                child: const Text("Profile",style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25,),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                color: Colors.red[200],
                child: const Text('Heart Bit Rate',style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25,),
              ),),

              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                color: Colors.red[300],
                child: const Text('Oxygen Level',style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25,),),
    ),

              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                color: Colors.red[400],
                child: const Text('Temperature',style: TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25,),
    ),
              ),
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

    )


        ),



    drawer: MyDrawer(),


      );












  }
}