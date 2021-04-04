import 'package:flutter/material.dart';

//Reformat Code with dartfmt로 하면 자동으로 정리됨 코드.
void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: Colors.black38,
        ),
        body: Image(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg'),
        ),
      )),
    );
