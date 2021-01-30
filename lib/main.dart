import 'package:flutter/material.dart';

//Command + S로 저장하고 실행할것
//cmd Shift P 디바이스 바꿀 수 있음
//hot reload 단축키는 cmd s

void main() => runApp(MyApp());

//stl이라고 치면 자동으로 StatelessWidget이 만들어진다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fomagran",
      theme: ThemeData(
          //색상 정하기 blue에 마우스를 대면 색상을 구체적으로 정할 수 있음
          primarySwatch: Colors.blue),
      //앱이 정상적으로 실행됐을때 보여지는 경로
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold는 요소를 다양하게 배치할 수 있도록 하는 발판
    return Scaffold(
      //백그라운드 색 정하기
      backgroundColor: Colors.amber[800],
      //앱바를 정함.
      appBar: AppBar(
        title: Text("Fomagran's Apps"),
        backgroundColor: Colors.amber[700],
      ),
      //horizontal 중앙에 배치
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          //padding leading값에 맞춰서 정렬하기
          crossAxisAlignment: CrossAxisAlignment.start,
          //vertical 중앙에 배치하기
          children: <Widget>[
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.white,
                //글자 간격주기
                letterSpacing: 2.0,
              ),
            ),
            //위젯간 간격주
            SizedBox(
              height: 10,
            ),
            Text(
              "FOMAGRAN",
              style: TextStyle(
                color: Colors.white,
                //글자 간격주기
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
