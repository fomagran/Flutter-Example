import 'question.dart';

class QuestionList {
  int _questionNumber = 0;
  List<Question> _questions = [
    Question("쭈워니의 성별은 여자이다.", true),
    Question("쭈워니는 엄청 귀엽다.", true),
    Question("쭈워니 핸드폰은 아이폰 12pro이다.", false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  bool isFinished() {
    return _questionNumber == _questions.length - 1;
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }
}
