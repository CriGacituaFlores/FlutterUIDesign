import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  IconData icon = Icons.favorite_border;

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text("Agregaste a Favoritos")
        )
    );
    setState(() {
      icon = icon == Icons.favorite ? Icons.favorite_border : Icons.favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          icon
      ),
    );
  }
}