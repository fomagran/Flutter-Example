import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(MyApp());
// }
//위 함수를 => 를 이용하여 줄일 수 있음
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded setButton(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              setButton(Colors.red, 1),
              setButton(Colors.orange, 2),
              setButton(Colors.yellow, 3),
              setButton(Colors.green, 4),
              setButton(Colors.blue, 5),
              setButton(Colors.indigo, 6),
              setButton(Colors.purple, 7),
            ]),
      ),
    ));
  }
}
