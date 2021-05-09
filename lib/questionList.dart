import 'question.dart';

class QuestionList {
  int _questionNumber = 0;
  List<Question> _questions = [
    Question(q: "주원이의 성별은 여자이다.", a: true),
    Question(q: "쭈워니는 엄청 귀엽다.", a: true),
    Question(q: "쭈워니 핸드폰은 아이폰 12pro이다.", a: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }
}
