//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Category.dart';
import 'login.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String ,WidgetBuilder>{
        "/cat":(BuildContext context)=>Category(),
        "/log":(BuildContext ctx)=>login(),
      }
    );
  }
}