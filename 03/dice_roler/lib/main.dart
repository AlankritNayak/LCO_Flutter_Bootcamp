import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
  var imglist = [ AssetImage("assets/images/dice1.jpg.jpg", 
              ),
     AssetImage("assets/images/dice2.jpg.jpg"),
      AssetImage("assets/images/dice3.jpg.jpg"),
     AssetImage("assets/images/dice4.jpg.jpg"),
     AssetImage("assets/images/dice5.jpg.jpg"),
     AssetImage("assets/images/dice6.jpg.jpg")];
   
class _MyAppState extends State<MyApp> {
 // @override
   var initImage1;
   var initImage2;
   changeDiceNum(){
     int rand = Random().nextInt(6);
     int rand2  = Random().nextInt(6);
     setState(() {
      initImage1 = imglist[rand];
      initImage2 = imglist[rand2];
     });
   }
  Widget build(BuildContext context) {
   
    return MaterialApp(
     
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Roll Your Dice",
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.redo),
              onPressed: () {},
            )
          ],
        ),
        body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(child:
                    Image(image:
                   initImage1),height: 100, width: 100,),
                   Container(child: Image (image: 
                    initImage2),height: 100, width: 100,
                   )
                  ]),
              
              
              Text(
                "   "
              ),
              FlatButton(
                child: Text("change"),
                onPressed: () => changeDiceNum(),
              )
            ],
          ),
        
        
      )
    );
  }
}
