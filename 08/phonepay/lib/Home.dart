import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var list = [Icon(Icons.trending_up), Icon(Icons.home), Icon(Icons.person_add), Icon(Icons.battery_unknown), Icon(Icons.block), Icon(Icons.bluetooth)];
 var textList = ["To Contact", "To Account", "To Self", "Bank Balance", "bluetooth", "falana", "dhimka"];
 var imageList = [AssetImage("assets/a1.jpg"),AssetImage("assets/a2.jpg"),AssetImage("assets/a3.jpg"),AssetImage("assets/a4.jpg"),AssetImage("assets/a5.jpg"),AssetImage("assets/a6.jpg")];
 var imagetextlist = ["Alankrit1","Alankrit2","Alankrit3","Alankrit4","Alankrit5","Alankrit6"];
 
  @override
  Widget build(BuildContext context) {
    return 
       SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Money Transfers",style: TextStyle(fontWeight:FontWeight.bold, fontSize:15),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext ctx, index)=>
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: list[index],
                        iconSize: 35,
                        padding: EdgeInsets.fromLTRB(35,20,30,10),
                      ),
                      Text(textList[index]),
                    ],
                  )
                ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (BuildContext ctx, index)=>
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,30,8,8),
                        child: CircleAvatar(
                          
                          radius: 30,
                          backgroundImage: imageList[index],
                        ),
                      ),
                      Text(imagetextlist[index]),
                    ],
                  )
                ),
          ),
          Row(children: <Widget>[
            Container( 
              height: 150,
              width: 137,
            //  child:
              //  MaterialButton(
           //  onPressed: (){},
              color: Color(0xfffae6ee),
              child:Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/percent.png"),
                  ),
                ),
                Text("View All\nOffers"),
              ],)
           // )
            ),
            Container(
              height: 150,
              width: 135,
           //   child: MaterialButton(
             //   onPressed: (){},
                color: Color(0xfffae6ee),
                child:Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/rewards.png"),
                    ),
                  ),
                  Text("View My\nRewards"),
                ],)
            //  ),
            ),
             Container(
              height: 150,
              width: 135,
            //  child: MaterialButton(
              //  onPressed: (){},
                color: Color(0xfffae6ee),
                child:Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/refer.png"),
                    ),
                  ),
                  Text("Refer & Earn\nMin. ₹100"),
                ],)
            //  ),
            )
          ],),
        /*  Expanded(child:
          GridView.builder(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index){
              return
              Container(
                height: 50,
                width: 50,
                child:
              
             // Container(
               // onPressed:(){},
                Column(
                  children: <Widget>[
                    Image(
                      height:20,
                      width: 20,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
              //  )
                ));
            },
          ))*/
          Column(children: <Widget>[
            Row(children: <Widget>[
         
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           
           
          ],),
           Row(children: <Widget>[
         
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           
           
          ],),
           Row(children: <Widget>[
         
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           
           
          ],),
           Row(children: <Widget>[
         
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
          ],),
           Row(children: <Widget>[
         
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ), Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           Container(
            height: 100,
            width: 100,
            child:MaterialButton(
                onPressed:(){},
                child:
                Column(
                  children: <Widget>[
                    Image(
                      height:80,
                      width: 80,
                      image: AssetImage("assets/pe.png"), ),
                    Text("pe")
                  ],
               )
            )
          ),
           
           
          ],)
          ],)
        ],
      ),
    );
  }
}
