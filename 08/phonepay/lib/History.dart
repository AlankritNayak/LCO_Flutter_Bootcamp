import 'package:flutter/material.dart';
class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}
var amm = ["134", "452345", "5462", "5652", "6856", "5863", "5443", "0098908989", "98870","1-510i"];
var subt = ["alnrkti", "raushanjha", "shivam", "dharmu", "shobhit", "thavas", "Jay", "alpha", "beta", "gamma"];
class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext ctx, index){
          return
          Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
              height: 100,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.white),
              //color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  ListTile(
                    trailing: Column(children: <Widget>[
                      Text("₹"+amm[index]+"\n"+"debited from\nSBI", style: TextStyle(fontSize: 13)),
                      
                    ],),
                    subtitle: Text(subt[index]),
                    leading: CircleAvatar(radius: 20,backgroundImage: AssetImage("assets/uparrow.jpg"),),
                    title: Text("Paid To",style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                CircleAvatar(radius: 14,backgroundImage: AssetImage("assets/sbil.jpg"),)
                ],
              ),
            ),
          );
        },
      )
    );
  }
}