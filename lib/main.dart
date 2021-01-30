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
        //앱바를 정함.
        appBar: AppBar(
          title: Text("Fomagran's Apps"),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          //각 left,top,right,bottom패딩 정해주는 메소드
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            //vertical 중앙에 배치하기
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("Hello"), Text("Hello"), Text("Hello")],
          ),
        ));
  }
}
