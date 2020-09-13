import 'package:flutter/material.dart';

class PersonalScreen extends StatefulWidget {
  final Function nextButtonEvent;
  final State instanceOfThat;

  PersonalScreen({Key key, this.nextButtonEvent, this.instanceOfThat})
      : super(key: key);

  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  String _goalString;
  String _incomeString;
  String _expenseString;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Personal information",
              style: TextStyle(fontSize: 30),
            ),
          ),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Align(
            child: Text(
              "Please fill in the information and your goal for digital saving",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: InkWell(
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
                        "Goal for activation",
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _goalString != null?Text(
                        _goalString,
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ):Text(
                        "Choose action",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: InkWell(
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
                        "Monthly income",
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _incomeString!=null? Text(
                        _incomeString,
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ):Text(
                        "Choose action",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: InkWell(
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
                        "Monthly expense",
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _expenseString != null?Text(
                        _expenseString,
                        style: TextStyle(fontSize: 18, color:Colors.blue),
                      ):Text(
                        "Choose action",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {},
          ),
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
                widget.nextButtonEvent(3, widget.instanceOfThat);
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
