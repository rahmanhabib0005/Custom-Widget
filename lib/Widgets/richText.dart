import 'package:flutter/material.dart';

class RichtextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      style: TextStyle(color: Colors.grey, fontSize: 21),
      children: <TextSpan>[
        TextSpan(text: 'Hello'),
        TextSpan(
            text: 'World!  ',
            style: TextStyle(
                fontSize: 34, color: Colors.blue, fontWeight: FontWeight.bold)),
        TextSpan(
          text: 'Welcome to!  ',
        ),
        TextSpan(
            text: 'Flutter!',
            style: TextStyle(
                fontSize: 43,
                color: Colors.deepOrangeAccent,
                fontStyle: FontStyle.italic)),
      ],
    ));
  }
}
