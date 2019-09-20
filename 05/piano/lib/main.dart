import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';
main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
  .then((_){
    runApp(MyApp());
  });
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}