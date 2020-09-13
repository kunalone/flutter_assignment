import 'package:flutter/material.dart';

class VedioScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  VedioScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _VedioScreenState createState() => _VedioScreenState();
}

class _VedioScreenState extends State<VedioScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Schedule Video Call"),
        Text(
            "Choose date and time that you prefer, we will send link  via email to make vedio call on the scheduled date and time"),
        Container(
          child: Column(
            children: [
              Text("Select date"),
              Text(" Choose action"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Select time"),
              Text(" Choose action"),
            ],
          ),
        ),
        FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              widget.nextButtonEvent(4, widget.instanceOfThat);
            },
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 20.0),
            ))
      ],
    );
  }
}
