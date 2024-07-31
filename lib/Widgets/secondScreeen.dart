import 'package:custom_widget/Widgets/rangeSlider.dart';
import 'package:custom_widget/main.dart';
import 'package:flutter/material.dart';

class Secondscreeen extends StatelessWidget {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2nd Pages Content',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: nameController,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              // MyHomePage(nameController.text.toString()),
                              Rangesliders()
                              ),
                    );
                  },
                  child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
