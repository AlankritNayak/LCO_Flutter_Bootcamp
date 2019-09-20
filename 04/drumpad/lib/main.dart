import 'package:flutter/material.dart';
import 'HomePage.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}