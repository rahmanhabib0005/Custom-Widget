import 'package:custom_widget/main.dart';
import 'package:flutter/material.dart';

class Secondscreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '2nd Pages Content',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: "First Page")),
                );
              },
              child: Text('Next'))
        ],
      ),
    );
  }
}
