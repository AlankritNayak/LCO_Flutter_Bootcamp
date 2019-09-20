import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:sensors/sensors.dart';

import 'package:shake/shake.dart';

void main(){
  runApp(MyApp());
  }

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  
  var output = TextEditingController();
  var output2 = TextEditingController();
  // This widget is the root of your application.
  Widget buildNumButton(String ButtonTxt) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(20),
        child: Text(ButtonTxt),
        onPressed: () => numPressed(ButtonTxt),
      ),
    );
  }
  
  equals(){

      if(numb.contains("/")){
        var list = numb.split("/");
        double num1 = double.parse(list[0]);
        double num2 = double.parse(list[1]);
        double result = num1/num2;
        ShakeDetector.autoStart(onPhoneShake: (){
        output2.text = result.toString();
        });
      }
      if(numb.contains("*")){
        var list = numb.split("*");
        double num1 = double.parse(list[0]);
        double num2 = double.parse(list[1]);
        double result = num1*num2;
        ShakeDetector.autoStart(onPhoneShake: (){
        output2.text = result.toString();
        });
      }
      if(numb.contains("+")){
        var list = numb.split("+");
        double num1 = double.parse(list[0]);
        double num2 = double.parse(list[1]);
        double result = num1+num2;
        ShakeDetector.autoStart(onPhoneShake: (){
        output2.text = result.toString();
        });
      }
      if(numb.contains("-")){
        var list = numb.split("-");
        double num1 = double.parse(list[0]);
        double num2 = double.parse(list[1]);
        double result = num1-num2;
        ShakeDetector.autoStart(onPhoneShake: (){
        output2.text = result.toString();
        });
      }
  }
  String numb = "";
  numPressed(String ButtonTxt) {
    setState(() {
      if (ButtonTxt == "Clear" || ButtonTxt == "=") {
        numb = "";
        output.text = numb;
      } else {
        numb = numb + ButtonTxt;
        output.text = numb;
      }
    });
  }
  

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calcultor",
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Calculator",
            ),
            centerTitle: true,
            backgroundColor: Colors.grey,
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    prefixText: "Number1",
                  ),
                  controller: output,
                  enabled: false,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ),
               /* TextField(
                  decoration: InputDecoration(
                    prefixText: "Number2",
                  ),
                  textAlign: TextAlign.right,
                ),*/
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check_circle_outline),
                  ),
                  enabled: false,
                  controller: output2,
                  textAlign: TextAlign.right,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      buildNumButton("1"),
                      buildNumButton("2"),
                      buildNumButton("3"),
                      buildNumButton("/"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildNumButton("4"),
                      buildNumButton("5"),
                      buildNumButton("6"),
                      buildNumButton("*"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildNumButton("9"),
                      buildNumButton("8"),
                      buildNumButton("9"),
                      buildNumButton("-"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildNumButton("."),
                      buildNumButton("0"),
                      buildNumButton("00"),
                      buildNumButton("+"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(30),
                        child: Text("Clear"),
                        onPressed: () => numPressed("Clear"),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(30),
                        child: Text("="),
                        onPressed: () => equals(),
                      )
                    ],
                  )
                ])),
              ],
            ),
          ),
        ));
  }
}
