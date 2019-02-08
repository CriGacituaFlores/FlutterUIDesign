import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search.dart';
import 'profile_trips.dart';

class PataTrips extends StatefulWidget {

  @override
  State createState() {
    return _PataTrips();
  }
}

class _PataTrips extends State<PataTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrip(),
    Search(),
    ProfileTrips(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        )
      ),
    );
  }
}