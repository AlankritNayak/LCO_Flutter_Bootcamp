import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //@override
  Widget _dialogBuilder(BuildContext context) {
    return SimpleDialog(children: <Widget>[Container(width: 50, height: 30)]);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello world"),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.android)),
        backgroundColor: Colors.blueGrey,
        body: Column(children: <Widget>[
          Text(
            "alankrit",
            style: TextStyle(color: Colors.green, fontSize: 50),
          ),
          Text(
            "nayak",
            style: TextStyle(color: Colors.green, fontSize: 50),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter Email"),
           // keyboardType: TextInputType.number,
          ),
          RaisedButton(
            child: Text("signup"),
            color: Color.fromRGBO(195, 155, 211, 50),
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {},
          ),
          TextField(decoration: InputDecoration(hintText: "Enter password"),keyboardType: TextInputType.number,),
          RaisedButton(
              child: Text("Login"),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color.fromRGBO(195, 155, 211, 50),
              onPressed: () {}),
        ]),
      ),
    );
  }
}
