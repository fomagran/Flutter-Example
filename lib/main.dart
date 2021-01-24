import 'package:flutter/material.dart';

//Command + S로 저장하고 실행할것
//오류 해결해야함.
// //Could not build the application for the simulator.
// Error launching application on iPhone 12 Pro.

void main() => runApp(MyApp());

//stl이라고 치면 자동으로 StatelessWidget이 만들어진다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fomagran",
      theme: ThemeData(
          //색상 정하기 blue에 마우스를 대면 색상을 구체적으로 정할 수 있음
          primarySwatch: Colors.black87),
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
      //앱바를 정함.
      appBar: AppBar(
        title: Text("Fomagran's Flutter App"),
      ),
      //body를 가운데로 정렬
      body: Center(
        //Column은 세로로 배치한다.
        child: Column(
          children: <Widget>[Text("Hello"), Text("Hello"), Text("Hello")],
        ),
      ),
    );
  }
}
