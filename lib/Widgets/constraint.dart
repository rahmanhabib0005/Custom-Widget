import 'package:flutter/material.dart';

class Constraint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 300, maxHeight: 200, minHeight: 100, minWidth: 200),
        child: ElevatedButton(onPressed: () {}, child: Text('Submit')));
  }
}
