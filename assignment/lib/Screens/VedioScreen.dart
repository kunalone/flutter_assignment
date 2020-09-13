import 'package:flutter/material.dart';
import 'dart:async';

class VedioScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  VedioScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _VedioScreenState createState() => _VedioScreenState();
}

class _VedioScreenState extends State<VedioScreen> {
  String _dateString;
  String _timeString;

  double _height = 100;
  double _width = 100;
  double _radious = 50;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sec5Timer();
  }

  sec5Timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_height == 100) {
        this.setState(() {
          _width = 120;
          _height = 120;
          _borderRadius = BorderRadius.circular(60);
        });
      } else {
        this.setState(() {
          _width = 100;
          _height = 100;
          _borderRadius = BorderRadius.circular(50);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                  width: _width,
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  height: _height,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: _borderRadius,
                  ),
                  // Define how long the animation should take.
                  duration: Duration(seconds: 1),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.easeOut),
            ),
            Padding(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Schedule video call",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Align(
                child: Text(
                  "Choose date and time that you prefer, we will send link  via email to make vedio call on the scheduled date and time",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                alignment: Alignment.center,
              ),
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Select date",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: _dateString != null
                            ? Text(
                                _dateString,
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              )
                            : Text(
                                "Choose action",
                                style: TextStyle(fontSize: 18),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2040))
                    .then((value) => {
                  this.setState(() {
                    _dateString = value.toString();
                  })
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Select time",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: _timeString != null
                            ? Text(
                                _timeString,
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              )
                            : Text(
                                "Choose action",
                                style: TextStyle(fontSize: 18),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) => {
                  this.setState(() {
                    _timeString = value.toString();
                  })
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,

                onPressed: () {
                  widget.nextButtonEvent(4, widget.instanceOfThat);
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ));
  }
}
