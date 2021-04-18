import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //이미지 첨부 이렇게 줄여서 쓸수도 있음.
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/dice1.png"),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/dice1.png"),
          )),
        ],
      ),
    );
  }
}
