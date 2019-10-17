import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

var imglist = [
  AssetImage(
    "assets/images/dice1.jpg.jpg",
  ),
  AssetImage("assets/images/dice2.jpg.jpg"),
  AssetImage("assets/images/dice3.jpg.jpg"),
  AssetImage("assets/images/dice4.jpg.jpg"),
  AssetImage("assets/images/dice5.jpg.jpg"),
  AssetImage("assets/images/dice6.jpg.jpg")
];

class _MyAppState extends State<MyApp> {
  // @override
  var initImage1 = imglist[0];
  var initImage2 = imglist[0];

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Image(image: initImage1),
                height: 100,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Image(image: initImage2),
                height: 100,
                width: 100,
              ),
            )
          ]),
          Text("   "),
          FlatButton(
            child: Text("change"),
            onPressed: () {
              int rand = Random().nextInt(6);
              int rand2 = Random().nextInt(6);
              setState(() {
                initImage1 = imglist[rand];
                print("inside set state");
              });
              print("outside set state");
              initImage2 = imglist[rand2];
              print("after image2 update");
            },
          )
        ],
      ),
    ));
  }
}
