import 'package:flutter/material.dart';

class ProgressStage extends StatelessWidget {
  final String value;
  final String isCompleted;

  ProgressStage({this.value, this.isCompleted});

  @override
  Widget build(BuildContext context) {

    if(this.isCompleted == "1"){
      return Container(child: Text(this.value,style: TextStyle(color: Colors.green),));
    }
    else{
      return Container(child: Text(this.value,style: TextStyle(color: Colors.black),));
    }
  }
}
