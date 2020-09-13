import 'package:flutter/material.dart';
import 'package:select_dialog/select_dialog.dart';

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
    return ListView(children: [
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
                    child: _goalString != null
                        ? Text(
                      _goalString,
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
            SelectDialog.showModal<String>(
              context,
              label: "Simple Example",
              // titleStyle: TextStyle(color: Colors.brown),
              // showSearchBox: false,
              selectedValue: "first",
              // backgroundColor: Colors.grey,
              items: [
                "Save more than 1 lakh per month",
                "Save more than 1 lakh per quarter",
                "Save more than 1 lakh every 6 months",
                "Save more than 1 lakh per year"
              ],
              onChange: (String selected) {
                this.setState(() {
                  _goalString = selected;
                });
              },
            );
          },
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
                    child: _incomeString != null
                        ? Text(
                      _incomeString,
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
            SelectDialog.showModal<String>(
              context,
              label: "Simple Example",
              // titleStyle: TextStyle(color: Colors.brown),
              // showSearchBox: false,
              selectedValue: "first",
              // backgroundColor: Colors.grey,
              items: [
                "000-10,000",
                "10,000-50,000",
                "50,000-1,00,000",
                "1,00,000-1,50,000"
              ],
              onChange: (String selected) {
                this.setState(() {
                  _incomeString = selected;
                });
              },
            );
          },
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
                    child: _expenseString != null
                        ? Text(
                      _expenseString,
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
            SelectDialog.showModal<String>(
              context,
              label: "Simple Example",
              // titleStyle: TextStyle(color: Colors.brown),
              // showSearchBox: false,
              selectedValue: "first",
              // backgroundColor: Colors.grey,
              items: [
                "000-5,000",
                "5,000-10,000",
                "10,000-50,000",
                "50,000-1,00,000"
              ],
              onChange: (String selected) {
                this.setState(() {
                  _expenseString = selected;
                });
              },
            );
          },
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
              if(_goalString != null && _incomeString != null && _expenseString != null){
                widget.nextButtonEvent(3, widget.instanceOfThat);
              }
            },
            child: Text(
              "NEXT",
              style: TextStyle(fontSize: 20.0),
            )),
      )
    ],);
  }
}
