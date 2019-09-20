import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:
           Stack(
             alignment: AlignmentDirectional.center,
            children: <Widget>[
              ClipPath(
                clipper: ClipHome(),
              //  height: double.infinity,
                //width: double.infinity,
                child: Container(
                  color: Colors.red,
                ),
                ),
                 Column(
                    children: <Widget>[
                      Container(
                        height: 300,
                        width: double.infinity,
                      )
                      ,
                      ClipOval(child:
              Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/IMG_20190519_101551.jpg", 
                      fit: BoxFit.fill,
                      ),
                      )
                      ),
                    
                  Text(
                    "Alankrit Nayak", style: TextStyle(fontSize: 40), 
                  )
                  ],
                  ),
            ]
            
           )
    );
  }
}
class ClipHome extends CustomClipper<Path>{
Path getClip(Size size){
  var path = Path();
  path.lineTo(0.0, 0.0);
  path.lineTo(0.0, 600.0);
  path.lineTo(size.width, 200.0);
  path.lineTo(size.width,0.0);
  return path;
}
bool shouldReclip(ClipHome oldClipper){ 
  return oldClipper != this;
}
}