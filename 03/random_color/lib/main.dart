import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var intialcolor = Colors.black;
  var initialcolor2 = Colors.blue;
  var colorlist = [
    Colors.indigo,
    Colors.orange,
    Colors.pink,
    Colors.teal,
  ];
  changeColot() {
    var random = Random().nextInt(colorlist.length);
    var random2 = Random().nextInt(colorlist.length);
    setState(() {
      intialcolor = colorlist[random];
      initialcolor2 = colorlist[random2];
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      
        home: Scaffold(
          appBar: AppBar(
            title: Text("random"),
            backgroundColor: Colors.red,   
          ),
        
        body: Stack(
          children: <Widget>[
    
              
              Container(
              width: double.infinity,
              height: double.infinity,
              color: initialcolor2,
            ),

            Center(
              child: Container(
                width: 200,
                height: 320,
                color: intialcolor,
               child: Stack(
                 children: <Widget>[
                   Center(
                     child: MaterialButton(
                       onPressed: () => changeColot(),
                       child: Text("Change it"),
                       color: Colors.blue,
                     ),
                   ),
                 ],
               
               ),
               ),
            ),
              
        
            
          
          ],
        )
        )
        
    );
  }
}
