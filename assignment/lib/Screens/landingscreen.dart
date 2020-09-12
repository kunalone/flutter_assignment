import 'package:flutter/material.dart';
import 'package:assignment/Screens/CustomWidgets/ProgressStages.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              color: Colors.white,
              child: Row(children: [
                Expanded(
                    child: ProgressStage(
                  value: "1",
                  isCompleted: "0",
                )),
                Expanded(
                    child: ProgressStage(
                  value: "2",
                  isCompleted: "0",
                )),
                Expanded(
                    child: ProgressStage(
                  value: "3",
                  isCompleted: "0",
                )),
                Expanded(
                    child: ProgressStage(
                  value: "4",
                  isCompleted: "0",
                ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
