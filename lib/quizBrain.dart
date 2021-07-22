import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("q0", true),
    Question("q2", false),
    Question("q3", true),
    Question("q4", false),
    Question("q5", true),
    Question("q6", false),
    Question("q7", true),
    Question("q8", false),
    Question("q9", true),
    Question("q10", false),
  ];

  String getQuestionStr() {
    return _questionBank[_questionNumber].QuestionStr;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].QuestionAns;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
}
