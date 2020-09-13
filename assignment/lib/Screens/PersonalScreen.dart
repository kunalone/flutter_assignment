import 'package:flutter/material.dart';

class PersonalScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  PersonalScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Personal information"),
        Text("Please fill in the information and your goal for digital saving"),
        Container(child: Column(children: [Text("Goal for activation"),
          Text(" Choose action"),],),),
        Container(child: Column(children: [Text("Monthly income"),
          Text(" Choose action"),],),),
        Container(child: Column(children: [Text("Monthly expense"),
          Text(" Choose action"),],),),
        FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              widget.nextButtonEvent(3, widget.instanceOfThat);
            },
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 20.0),
            ))
      ],
    );
  }
}
