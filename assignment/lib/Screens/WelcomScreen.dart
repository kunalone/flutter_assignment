import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child:  Padding(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "You have successfully created account",
          style: TextStyle(fontSize: 30),
        ),
      ),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    ),),),);
  }
}
