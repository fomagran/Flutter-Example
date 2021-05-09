import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  Question q1 = Question(q: "주원이의 성별은 여자이다.", a: true);
  Question q2 = Question(q: "쭈워니는 엄청 귀엽다.", a: true);
  Question q3 = Question(q: "쭈워니 핸드폰은 아이폰 12pro이다.", a: false);

  List<Question> questions = [
    Question(q: "주원이의 성별은 여자이다.", a: true),
    Question(q: "쭈워니는 엄청 귀엽다.", a: true),
    Question(q: "쭈워니 핸드폰은 아이폰 12pro이다.", a: false)
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questions[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                if (questions[questionNumber].questionAnswer == true) {
                  scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                } else {
                  scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                }
                setState(() {
                  if (questionNumber < 2) {
                    questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                if (questions[questionNumber].questionAnswer == false) {
                  scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                } else {
                  scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                }
                setState(() {
                  if (questionNumber < 2) {
                    questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
