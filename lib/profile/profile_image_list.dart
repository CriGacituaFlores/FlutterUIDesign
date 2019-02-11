import 'package:flutter/material.dart';
import 'package:patatrip/profile/card_image_profile.dart';

class ProfileImageList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    //double widthPercent = width * 1;

    return FractionallySizedBox(
        heightFactor: 0.9,
        child: ListView(
            padding: EdgeInsets.all(30.0),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              CardImageProfile("assets/img/coast.jpg"),
              CardImageProfile("assets/img/cave.jpg"),
              CardImageProfile("assets/img/cascade.jpg"),
              CardImageProfile("assets/img/bridge.jpg"),
            ]
        )
    );
  }
}