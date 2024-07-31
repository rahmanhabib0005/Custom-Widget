import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rangesliders extends StatefulWidget {
  @override
  State<Rangesliders> createState() => _RangeSliderState();
}

class _RangeSliderState extends State<Rangesliders> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('RangeSlider'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade400,
            min: 0,
            max: 100,
            onChanged: (newValue) {
              print('${newValue.start} - ${newValue.end}');
              values = newValue;
              setState(() {});
            }),
      ),
    );
  }
}
