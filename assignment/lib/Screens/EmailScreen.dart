import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  EmailScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("welcome to GIN finans"),
        Text(
            "Welcome to bank of future, manage and track your account no the go"),
        TextField(
          onChanged: (value) {
            //Do something with the user input.
          },
          decoration: InputDecoration(
            hintText: 'Enter your Email.',
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          ),
        ),

        FlatButton(
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
            ))
      ],
    );
  }
}
