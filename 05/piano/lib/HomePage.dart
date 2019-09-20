import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget buildButton(int id){
    return Container(
       height: double.infinity,
      // margin: EdgeInsets.all(1.0),
      child:OutlineButton(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          gradient: LinearGradient(
            begin: Alignment.center,
            colors: [ Colors.blue,  Color(0xff999999)],
          )
        ),
      ),
     
      
      onPressed:() => buttonPressed(id),
        
      
    ));
  }
  buttonPressed(int idd){
     setState(() {
       
     
      switch (idd) {
        case 1:
          AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "one.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 2:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "two.mp3",
              folder: "assets/",
              
            ),
          );
          player.play();
          break;
        case 3:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "three.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 4:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "four.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 5:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "five.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 6:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "six.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 7:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "seven.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 8:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "eight.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
         
        default:
      }
     });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Piano", style: TextStyle(color: Colors.blue, fontSize: 40)),
        backgroundColor: Colors.grey,

      ),
      body: Flex(direction: Axis.horizontal ,children: <Widget>[
        /*  Container(color: Colors.lightBlue,
          width: 5, height: double.infinity,),*/
         Expanded(child: buildButton(1)),
           Expanded(child: buildButton(2)),
            Expanded(child: buildButton(3)),
             Expanded(child: buildButton(4)),
              Expanded(child: buildButton(5)),
Expanded(child:buildButton(6)),
Expanded(child:buildButton(7)),
Expanded(child:buildButton(8)),
/*Container(color: Colors.lightBlue,
          width: 40, height: double.infinity,),*/
      ],)
        
      
    );
  }
}