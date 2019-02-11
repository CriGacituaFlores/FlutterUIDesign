import 'package:flutter/material.dart';
import 'package:patatrip/profile/gradient_profile.dart';
import 'package:patatrip/profile/profile_image_list.dart';

class ProfileTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientProfile("Profile"),
        ProfileImageList(),
      ],
    );
  }
}