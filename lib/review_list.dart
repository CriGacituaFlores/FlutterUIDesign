import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/girl_traveler.jpg","María Nieves","2 review 2 photo","There is an amazing place in Sri Land"),
        Review("assets/img/josh_traveler.jpg","Josh jhon","1 review 3 photo","There is an amazing place in Sri Land"),
        Review("assets/img/traveler_photo.jpg","Cristian Gactiúa","4 review 5 photo","There is an amazing place in Sri Land"),
      ],
    );
  }

}