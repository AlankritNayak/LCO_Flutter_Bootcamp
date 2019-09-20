import 'dart:math';
import 'package:scratcher/scratcher.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var priceList = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

class _HomePageState extends State<HomePage> {
//  final _scratchKey = GlobalKey<ScratcherState>();
  final global = GlobalKey<ScratcherState>();
  int TotalPrice = 0;
  setTotalPrice(int index) {
    setState(() {
      for(int i = 0; i<priceList.length; i++){
        TotalPrice = TotalPrice + priceList[i];
      }
    });
    
  }

  setPrice(int index) {
    setState(() {
      int rand = Random().nextInt(500);

      priceList[index] = rand;
      // TotalPrice = TotalPrice + priceList[index];
    });
    setTotalPrice(index);
  }

  String displayPrice(int index) {
    String rev = "your price is ${priceList[index]}";
    return rev;
  }

  Reset() {
    for (int i = 0; i < priceList.length; i++) {
        priceList[i] = 0;
      }
      global.currentState.reset(duration: Duration(milliseconds: 2000));
      setState(() {
        
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            actions: <Widget>[
              IconButton(
                onPressed:() => 
                 
                
                  Reset(),
                
                icon: Icon(Icons.refresh),
              )
            ],
            elevation: 0,
            backgroundColor: Color(0xfffdd83a),
          )),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage("assets/back.png")),
                  )),
                  Padding(
                padding: EdgeInsets.all(10),
                child: Text("₹"),
              ),
              
              Text(
                
                "$TotalPrice",
                style: TextStyle(fontSize: 50),
               
              ),
              Padding(
                padding: EdgeInsets.all(60),
                child: Text("you reward", style: TextStyle(fontSize: 20),),
              )
              
            ],
          ),
          Expanded(
          //  key: Key("value"),
              key: global,
              child: GridView.builder(
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext ctx, index) {
              return Scratcher(
                key: ValueKey("value"),
                brushSize: 50,
                threshold: 20,
                color: Colors.red,
                imagePath: "assets/scratch.png",
                imageFit: BoxFit.none,
                onChange: (value) {},
                onThreshold: () => setPrice(index),
                child: Container(
                  height: 190,
                  width: 190,
                  child: Center(
                    child: Text(" ${priceList[index]}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
