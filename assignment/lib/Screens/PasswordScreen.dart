import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  PasswordScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Create password"),
        Text("password will be used to login to account"),
        Padding(padding: EdgeInsets.all(20),child: TextField(
          onChanged: (value) {
            //Do something with the user input.
          },
          decoration: InputDecoration(
            hintText: 'Enter your Password.',
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          ),
        ),),
        Row(
          children: [
            Expanded(
                child: Container(
                  child: Center(child: Text("a")),
                )),
            Expanded(
                child: Container(
                  child: Center(child: Text("A")),
                )),
            Expanded(
                child: Container(
                  child: Center(child: Text("123")),
                )),
            Expanded(
                child: Container(
                  child: Center(child: Text("9+")),
                ))
          ],
        ),
        FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              widget.nextButtonEvent(2, widget.instanceOfThat);
            },
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 20.0),
            ))
      ],
    );
  }
}
