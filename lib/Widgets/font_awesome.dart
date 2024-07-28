import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.play_circle_rounded,
          size: 50,
          color: Colors.orange,
        ),
        SizedBox(
          width: 11,
        ),
        FaIcon(
          FontAwesomeIcons.google,
          size: 40,
          color: Colors.orange,
        ),
      ],
    ));
  }
}
