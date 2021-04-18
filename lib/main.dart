import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          FlatButton(
            color: Colors.red,
            onPressed: () {
              playSound(1);
            },
            child: null,
          ),
          FlatButton(
            color: Colors.orange,
            onPressed: () {
              playSound(2);
            },
          ),
          FlatButton(
            color: Colors.yellow,
            onPressed: () {
              playSound(3);
            },
            child: null,
          ),
          FlatButton(
            color: Colors.green,
            onPressed: () {
              playSound(4);
            },
            child: null,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              playSound(5);
            },
            child: null,
          ),
          FlatButton(
            color: Colors.indigo,
            onPressed: () {
              playSound(6);
            },
            child: null,
          ),
          FlatButton(
            color: Colors.purple,
            onPressed: () {
              playSound(7);
            },
            child: null,
          ),
        ]),
      ),
    ));
  }
}
