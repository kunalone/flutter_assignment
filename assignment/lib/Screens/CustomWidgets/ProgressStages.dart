import 'package:flutter/material.dart';

class ProgressStage extends StatelessWidget {
  final String value;
  final String isCompleted;

  ProgressStage({this.value, this.isCompleted});

  @override
  Widget build(BuildContext context) {
    if (this.isCompleted == "1") {
      return Container(
          width: 40,
          child: Center(
            child: Text(
              this.value,
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ));
    } else {
      return Container(
          child: Center(
        child: Text(
          this.value,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
        ),
      ));
    }
  }
}
