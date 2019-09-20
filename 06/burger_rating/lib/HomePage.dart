import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate Your Burger"),
        backgroundColor: Color(0xffFAD02E),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child:
        Column(
          children: <Widget>[

            Image.network("https://ak2.picdn.net/shutterstock/videos/34850332/thumb/7.jpg"),
            RatingBar(
              maxRating: 5,
              halfFilledIcon: Icons.star_half,
              isHalfAllowed: true,
              onRatingChanged: (rating)=> print(rating),
              filledIcon: Icons.star,
              emptyIcon: Icons.star_border
            )
          ],
        )
      ),
    );
  }
}