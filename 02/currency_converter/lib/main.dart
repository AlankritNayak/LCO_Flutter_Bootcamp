import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
 @override
 
  var input = new TextEditingController();
  var output = TextEditingController();
  buttonPressed(String btntext){
    if(input.text == ""){
      print("text empty");
    }
  setState(() {
    double amm = double.parse(input.text);
    input.text = "";
    if(btntext == "Dollar"){
      output.text = (amm*0.014).toString();
    }
    if(btntext == "Euro"){
      output.text = (amm*0.013).toString();
    }
  });

    
  }
  Widget buildButton(String buttonText, Widget icon){
    return Expanded(
      child: FloatingActionButton(
       // padding: EdgeInsets.all(22.0),
       /* child: Text(
          buttonText,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),*/
        child: icon,
        onPressed: () => buttonPressed(buttonText),
      ),);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Currency Converter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello world"),
          backgroundColor: Colors.lightGreen,
        ),

        body:
         Container(
           child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: "enter native currency",
                    prefixIcon: const Icon(Icons.attach_money)),
                    controller: input,
                    keyboardType: TextInputType.number,
                textAlign: TextAlign.right,
              ),
              Text("output", style: TextStyle(color: Colors.green, fontSize: 20)),
              TextField(
                decoration: InputDecoration(
                    hintText: "foriegn currency",
                    prefixIcon: const Icon(Icons.euro_symbol)),
                    controller: output,
                    keyboardType: TextInputType.number,
                textAlign: TextAlign.right,
              ),
             /* Container(
                margin: EdgeInsets.only(top: 5),
                child:
              FloatingActionButton(

                onPressed: ()=> buttonPressed("Dollar"),
                child: Icon(Icons.monetization_on),
              ),),*/
              Container(
                margin: EdgeInsets.all(20),
                child: Column(children: <Widget>[
                
              Row(
                children: <Widget>[
                  buildButton("Dollar", Icon(Icons.attach_money)),
                  buildButton("Euro", Icon(Icons.euro_symbol)),
                  
                ],
              ),
                
                /*
              Row(
                children: <Widget>[
                  buildButton("Dollar"),
                  buildButton("Dollar"),
                  buildButton("Dollar"),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("Dollar"),
                  buildButton("Dollar"),
                  buildButton("Dollar"),
                ],
              ),*/
                ]),
              ),
            ],
        ),
         ),
      ),
    );
  }
}
