import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'MyMoney.dart';
import 'History.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context)=> HomePage(),
       "/mm":(context)=>MyMoney(),
       "/hh":(context)=>History(),
      },
    );
  }
}