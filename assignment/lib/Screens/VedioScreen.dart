import 'package:flutter/material.dart';

class VedioScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  VedioScreen({Key key, this.nextButtonEvent, this.instanceOfThat}) : super(key: key);
  @override
  _VedioScreenState createState() => _VedioScreenState();
}

class _VedioScreenState extends State<VedioScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
