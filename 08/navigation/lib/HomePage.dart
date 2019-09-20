import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
      ),
      drawer: Drawer(
          child: ListView(children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alankrit"),
              accountEmail: Text("alankrit@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xffBB2CD9),
                child: Text("RJ"),
              ),
            ),
            ListTile(
                title: Text("Home"),
                trailing: Icon(Icons.home),
                
            ),
            ListTile(
                title: Text("Category"),
                trailing: Icon(Icons.category),
                onTap: ()=>Navigator.of(context).pushNamed("/cat"),
            ),
            ListTile(
                title: Text("Contact"),
                trailing: Icon(Icons.contact_mail),
            ),
            ListTile(
                title: Text("Login"),
                trailing: Icon(Icons.contact_mail),
                onTap: ()=>Navigator.of(context).pushNamed("/log"),
            ),
            Divider(

            ),
            ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.close),
                onTap: ()=>Navigator.of(context).pop(),
            ),
          ],),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffEAF0F1),
        child: Column(children: <Widget>[
          Text("Home Page")
        ],),
      ),
    );
  }
}