import 'package:flutter/material.dart';
import 'card_image.dart';

  class CardImageList extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 350.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage("assets/img/coast.jpg"),
            CardImage("assets/img/cave.jpg"),
            CardImage("assets/img/cascade.jpg"),
            CardImage("assets/img/bridge.jpg"),
          ]
        )
      );
    }
  }