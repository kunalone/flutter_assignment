import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  PasswordScreen({Key key, this.nextButtonEvent, this.instanceOfThat}) : super(key: key);
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
