import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: BodyPage(),
        ),
      ),
    );
  }
}

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  List<Icon> ScoreMark = [];
  List<String> Question = ["Question 1", "Question 2", "Question 3"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Test",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                "True",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  ScoreMark.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                "False",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  ScoreMark.add(Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: ScoreMark,
        )
      ], // children of column
    );
  }
}
