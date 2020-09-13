import 'package:flutter/material.dart';

class PersonalScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  PersonalScreen({Key key, this.nextButtonEvent, this.instanceOfThat}) : super(key: key);
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
