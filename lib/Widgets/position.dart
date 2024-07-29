import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 11,
            left: 11,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
