import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;


  EmailScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  String _errorString;
  String _email;
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Welcome to GIN finans",
              style: TextStyle(fontSize: 30),
            ),
          ),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Align(
            child: Text(
                "Welcome to bank of future, manage and track your account on the go",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: emailcontroller,
            onChanged: (value) {
              if(value.length > 0){
                if(EmailValidator.validate(value)){
                  _email = value;
                  this.setState(() {
                    _errorString=null;
                  });
                }
                else{
                  this.setState(() {
                    _errorString="Invalid email";
                  });
                }
              }
              else{
                this.setState(() {
                  _errorString=null;
                });
              }
              //Do something with the user input.
            },
            decoration: InputDecoration(
              errorText: _errorString,
              hintText: 'Enter your Email.',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                if(emailcontroller.text.length > 0 && _errorString == null) {
                  widget.nextButtonEvent(1, widget.instanceOfThat);
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
