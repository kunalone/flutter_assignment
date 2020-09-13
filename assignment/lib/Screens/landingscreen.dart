import 'package:assignment/Screens/VedioScreen.dart';
import 'package:flutter/material.dart';
import 'package:assignment/Screens/CustomWidgets/ProgressStages.dart';
import 'package:assignment/Screens/EmailScreen.dart';
import 'package:assignment/Screens/PasswordScreen.dart';
import 'package:assignment/Screens/PersonalScreen.dart';
import 'package:assignment/Screens/EmailScreen.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int _selectedIndex = 0;
  BuildContext contextToReffer;

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

  void changeTheSelectedIndex(index) {
    this.setState(() {
      _selectedIndex = index;
    });
  }

  var nextButtonClickedFrom =
      (value, context) => {context.changeTheSelectedIndex(value)};

  Widget getTheCorrectView() {
    switch (_selectedIndex) {
      case 0:
        return EmailScreen(
          nextButtonEvent: this.nextButtonClickedFrom,
          instanceOfThat: this,
        );
        break;
      case 1:
        return PasswordScreen(
          nextButtonEvent: this.nextButtonClickedFrom,
          instanceOfThat: this,
        );
        break;
      case 2:
        return PersonalScreen(
          nextButtonEvent: this.nextButtonClickedFrom,
          instanceOfThat: this,
        );
        break;
      case 3:
        return VedioScreen(
          nextButtonEvent: this.nextButtonClickedFrom,
          instanceOfThat: this,
        );
        break;
      default:
        return EmailScreen(
          nextButtonEvent: this.nextButtonClickedFrom,
          instanceOfThat: this,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    contextToReffer = context;
    var bottom = MediaQuery.of(context).viewInsets.bottom;

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
                  isCompleted:_selectedIndex > 0? "1":"0",
                )),
                Expanded(
                    child: ProgressStage(
                  value: "2",
                  isCompleted: _selectedIndex > 1? "1":"0",
                )),
                Expanded(
                    child: ProgressStage(
                  value: "3",
                  isCompleted: _selectedIndex > 2? "1":"0",
                )),
                Expanded(
                    child: ProgressStage(
                  value: "4",
                  isCompleted: _selectedIndex > 3? "1":"0",
                ))
              ]),
            ),
            Expanded(child: this.getTheCorrectView())
          ],
        ),
      ),
    );
  }
}
