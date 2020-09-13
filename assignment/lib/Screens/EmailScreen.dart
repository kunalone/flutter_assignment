import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  EmailScreen({Key key, this.nextButtonEvent, this.instanceOfThat}) : super(key: key);
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children:[ FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.blueAccent,
      onPressed: () {
        widget.nextButtonEvent(1, widget.instanceOfThat);
      },
      child: Text(
        "Flat Button",
        style: TextStyle(fontSize: 20.0),
      ))],);
  }
}
