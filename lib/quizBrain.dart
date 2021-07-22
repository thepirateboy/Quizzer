import 'question.dart';

class QuizBrain {
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

  String getQuestionStr(int QuestionNumber) {
    return _questionBank[QuestionNumber].QuestionStr;
  }

  bool getAnswer(int QuestionNumber) {
    return _questionBank[QuestionNumber].QuestionAns;
  }
}
