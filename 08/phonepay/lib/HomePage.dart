import 'package:flutter/material.dart';
import 'package:phonepay/main.dart';
import 'MyMoney.dart';
import 'History.dart';
import 'package:phonepay/MyMoney.dart';
import 'App.dart';
import 'shop.dart';
import 'Home.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
   int _currentIndex = 0;
  final List<Widget> _children = [Home(), MyMoney(), History(), App(), shop()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7d0b96),
        leading: Icon(Icons.person),
        
        actions: <Widget>[

          Icon(
            Icons.not_listed_location,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            size: 35,
          ),
          Icon(
            Icons.gradient,
            size: 35,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, 
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
           // activeIcon: MaterialButton(
           // onPressed: ()=>Navigator.of(context).pushNamed("/mm"),
           // ),
            icon: Icon(Icons.attach_money),
            title: Text("My Money"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("History"),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text("Apps"),
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text("Shop"),
          ),
        ],
      ),
      body: 
            _children[_currentIndex], 
      );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}
