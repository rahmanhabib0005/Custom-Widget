import 'package:flutter/material.dart';

class SizeboxedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox.square(
          dimension: 100,
          // width: 200,
          // height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Click',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox.square(
          dimension: 100,
          // width: 200,
          // height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Click',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
        ),
      ],
      // ),
    );
  }
}
