import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to Main Page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
