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
  bool _capitalExists = false;
  bool _smallExists = false;
  bool _numberExists = false;
  bool _lengthMoreThan9 = false;

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Create password",
              style: TextStyle(fontSize: 30),
            ),
          ),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Align(
            child: Text(
              "password will be used to login to account",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            obscureText: true,
            controller: _passwordController,
            onChanged: (value) {
              String capitalLettersPattern = r'([A-Z])';
              RegExp regExp = new RegExp(capitalLettersPattern);

              if (regExp.hasMatch(_passwordController.text)) {
                this.setState(() {
                  _capitalExists = true;
                });
              } else {
                this.setState(() {
                  _capitalExists = false;
                });
              }

              String smallLettersPattern = r'([a-z])';
              RegExp regExpSmall = new RegExp(smallLettersPattern);

              if (regExpSmall.hasMatch(_passwordController.text)) {
                this.setState(() {
                  _smallExists = true;
                });
              } else {
                this.setState(() {
                  _smallExists = false;
                });
              }

              String numberLettersPattern = r'([0-9])';
              RegExp regExpNUmber = new RegExp(numberLettersPattern);

              if (regExpNUmber.hasMatch(_passwordController.text)) {
                this.setState(() {
                  _numberExists = true;
                });
              } else {
                this.setState(() {
                  _numberExists = false;
                });
              }

              if (_passwordController.text.length > 9) {
                this.setState(() {
                  _lengthMoreThan9 = true;
                });
              } else {
                this.setState(() {
                  _lengthMoreThan9 = false;
                });
              }
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
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              child: Center(
                  child: _smallExists
                      ? Text(
                          "a",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        )
                      : Text("a")),
            )),
            Expanded(
                child: Container(
              child: Center(child:  Center(
                  child: _capitalExists
                      ? Text(
                    "A",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                      : Text("A")),),
            )),
            Expanded(
                child: Container(
              child: Center(child: Center(
                  child: _numberExists
                      ? Text(
                    "123",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                      : Text("123")),),
            )),
            Expanded(
                child: Container(
              child: Center(child:  Center(
                  child: _lengthMoreThan9
                      ? Text(
                    "9+",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                      : Text("9+")),),
            ))
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: FlatButton(

              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5)),
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                if(_capitalExists == true && _smallExists == true && _numberExists == true && _lengthMoreThan9 == true){
                  widget.nextButtonEvent(2, widget.instanceOfThat);
                }
              },
              child: Text(
                "NEXT",
                style: TextStyle(fontSize: 20.0),
              )),
        )
      ],
    );
  }
}
