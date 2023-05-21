import 'package:flutter/material.dart';
import 'package:test_project/widget.dart';
import '';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Health Monitoring"),
      ),

      body:Center(child:




             //children: [
               Container(
                 alignment: Alignment.topLeft,
                 child: InkWell(
                   child: SizedBox(
                     width: 200.0,
                     height: 250.0,
                     child: Padding(
                       padding: const EdgeInsets.all(0),
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         width: 250,
                         height: 250,

                         alignment: Alignment.center,
                         child:
                              Text("Profle", style: TextStyle(
                           color: Colors.white, fontWeight: FontWeight.normal, fontSize: 30,),
                         ),
                         decoration: BoxDecoration(
                           color: Colors.deepOrange,
                           shape: BoxShape.rectangle,

                           //borderRadius: BorderRadius.circular(changebutton?50:8),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
              // Container(
               //  alignment: Alignment.topRight,

                // child:
                 //InkWell(
                  // child: SizedBox(
                   //  width: 211.0,
                    // height: 250.0,
                    // child: Padding(
                      // padding: const EdgeInsets.all(0),
                       //child: AnimatedContainer(
                        // duration: Duration(seconds: 1),
                         //width: 250,
                         //height: 250,

                         //alignment: Alignment.center,
                         //child:
                         //Text("Heart Bit Rate", style: TextStyle(
                          // color: Colors.white, fontWeight: FontWeight.normal, fontSize: 30,),
                         //),
                         ///decoration: BoxDecoration(
                           //color: Colors.pinkAccent,
                           //shape: BoxShape.rectangle,

                           //borderRadius: BorderRadius.circular(changebutton?50:8),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),




         ),
         ),




          drawer: MyDrawer(),

    );
  }
}