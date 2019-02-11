import 'package:flutter/material.dart';
import 'package:patatrip/floating_action_button_green.dart';
import 'package:patatrip/review.dart';

class CardImageProfile extends StatelessWidget {

  String pathImage = "/assets/img/coast.jpg";

  CardImageProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 230.0,
      width: 350.0,
      margin: EdgeInsets.only(
        top: 60.0,
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.7)
            )
          ]
      ),
    );

    final tripName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        'Knucles Mountains Range',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final tripInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        'Hiking water tail hunting, Natural,bath'
            'Scenery & Photography',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 11.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final stepsInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        'Setps 123,123,123',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          color: Colors.orange,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final informationCard = Container(
      height: 100.0,
      width: 250.0,
      padding: EdgeInsets.only(
        top: 8.0,
        bottom: 8.0
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.7)
          )
        ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          tripName,
          tripInfo,
          stepsInfo
        ],
      )
    );

    return Stack(
        alignment: Alignment(0, 1.5),
        children: <Widget>[
          card,
          informationCard,
          FloatingActionButtonGreen()
        ]
    );

  }
}