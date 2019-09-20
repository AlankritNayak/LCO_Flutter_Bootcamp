import 'dart:math';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget buildButton(String buttonText, Color bcolor){
    return Expanded(
        child: MaterialButton(
          height: 80,
         // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(buttonText),
          color: bcolor,
          splashColor: Colors.limeAccent,
          onPressed: ()=> onpressed(buttonText),
        ),
    );
  }
  onpressed2(){
    AssetsAudioPlayer player = AssetsAudioPlayer();
    player.open(AssetsAudio(
        asset: "adicted.mp3",
        folder: "assets/",
      ),);
      player.playOrPause();
  }
  onpressed(String numm){
    AssetsAudioPlayer player = AssetsAudioPlayer();
    setState(() {
      
    
    if(numm == "One"){
      player.open(AssetsAudio(
        asset: "one.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Two"){
 player.open(AssetsAudio(
        asset: "two.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Three"){
       player.open(AssetsAudio(
        asset: "three.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Four"){
       player.open(AssetsAudio(
        asset: "four.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Five"){
       player.open(AssetsAudio(
        asset: "five.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Seven"){
         player.open(AssetsAudio(
        asset: "seven.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Eight"){
         player.open(AssetsAudio(
        asset: "eight.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Six"){
       player.open(AssetsAudio(
        asset: "six.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Nine"){
         player.open(AssetsAudio(
        asset: "nine.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    if(numm == "Ten"){
     player.open(AssetsAudio(
        asset: "ten.wav",
        folder: "assets/",
      ),);
      player.play();
    }
    player.pause();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        
        actions: <Widget>[
          IconButton(
            iconSize: 40,
            color: Colors.green,
            icon: Icon(Icons.translate),
            onPressed: () => onpressed2(),
          )
        ],
        title: Text("Numeros Espanoles",),
      ),
      body: 
        Container(
          color: Colors.grey,
          
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
             
              children: <Widget>[
              Container(
                height: 50,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset('assets/despasito.png'),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                ),
              Row(children: <Widget>[
                buildButton("One", Color(0xffFF3E4D)),
                buildButton("Two",Color(0xff0A79DF)),
              ],),
              Row(children: <Widget>[
                buildButton("Three",Color(0xffEAF0F1)),
                buildButton("Four",Color(0xffFFF222)),
              ],
              ),
              Row(children: <Widget>[
                buildButton("Five",Color(0xff333945)),
                buildButton("Six",Color(0xffBB2CD9)),
              ],
              ),
              Row(children: <Widget>[
                buildButton("Seven",Color(0xffE74292)),
                buildButton("Eight",Color(0xffFF4848)),
              ],
              ),
              Row(children: <Widget>[
                buildButton("Nine",Color(0xff67E6DC)),
                buildButton("Ten",Color(0xff2ecc72)),
              ],
              )
            ],),
        
        ),
      
    );
  }
}