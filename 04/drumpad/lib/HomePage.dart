import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Widget buildButton(Color bcolor, int id) {
    return Expanded(
        child: MaterialButton(
          highlightColor: Colors.black,
      color: bcolor,
      height: 140,
      onPressed: () => buttonPressed(id),
    ));
  }

  buttonPressed(int idd) {
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
              asset: "fv.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 6:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "sixth.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 7:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "seventh.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
        case 8:
        AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "eighth.mp3",
              folder: "assets/",
            ),
          );
          player.play();
          break;
          case 9:
          AssetsAudioPlayer player = AssetsAudioPlayer();
          player.open(
            AssetsAudio(
              asset: "one.mp3",
              folder: "assets/",
            ),
          );
          break;
        default:
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DrumPad",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xffFF3E4D),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset("assets/images.jpg"),
            color: Color(0xff6A89CC),
              
            
          ),
          Row(
            children: <Widget>[
              buildButton(Color(0xffFF3E4D), 1),
              buildButton(Color(0xff0A79DF), 2),
              buildButton(Color(0xff43BE31), 3)
            ],
          ),
          Row(
            children: <Widget>[
              buildButton(Color(0xffFFF222), 4),
              buildButton(Color(0xffEA7773), 5),
              buildButton(Color(0xffB83227), 6)
            ],
          ),
          Row(
            children: <Widget>[
              buildButton(Color(0xff2475B0), 7),
              buildButton(Color(0xff2ecc72), 8),
              buildButton(Color(0xffEEC213), 9)
            ],
          )
        ],
      ),
    );
  }
}
