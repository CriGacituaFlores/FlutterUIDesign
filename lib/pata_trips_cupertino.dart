import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:patatrip/home_trip.dart';
import 'package:patatrip/profile/profile_trips.dart';
import 'package:patatrip/search.dart';

class PataTripsCupertino extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  title: Text("")
              ),
            ]
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrip(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => Search(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => ProfileTrips(),
            );
            break;
        }
          },
      )
    );
  }
}