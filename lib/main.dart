import 'package:flutter/material.dart';
import 'package:quizzer/question.dart';
import 'package:quizzer/quizBrain.dart';

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

  //List<Question> ListQuestion = QuizBrain().questionBank;

  Question q1 = Question("www", true); //do nothing

  CheckAns(bool ans) {
    if (ans == myQuizBrain.getAnswer()) {
      print("Correct");
    } else {
      print("Wrong.");
    }
  }

  QuizBrain myQuizBrain = QuizBrain();

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
                // IF THE LIST IS PUBLIC YOU CAN USE: QuizBrain().questionBank[QuestionNumber].QuestionStr
                myQuizBrain.getQuestionStr(),
                textAlign: TextAlign.center,
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
                  bool ans = true;
                  CheckAns(ans);

                  myQuizBrain.nextQuestion();
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
                  bool ans = false;
                  CheckAns(ans);

                  myQuizBrain.nextQuestion();
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
