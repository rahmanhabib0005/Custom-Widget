import 'package:flutter/material.dart';

class Multiple extends StatelessWidget {
  var nameFromHome;

  Multiple(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome $nameFromHome',
            style: TextStyle(fontSize: 34, color: Colors.black),
          )
        ],
      ),
    );
  }
}
