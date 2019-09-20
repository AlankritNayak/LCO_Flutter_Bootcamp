import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:spanish_numbers/HomePage.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
main(List<String> args) {
  
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}