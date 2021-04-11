import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/profile.png'),
          ),
          Text(
            "Fomagran",
            style: TextStyle(
                fontFamily: "Timmana",
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text("Flutter Developer",
              style: TextStyle(
                fontFamily: "Timmana",
                fontSize: 20,
                color: Colors.teal.shade100,
              )),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+82 10 2240 6112",
                  style: TextStyle(
                      color: Colors.teal, fontFamily: "Timmana", fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "fomagran6@naver.com",
                  style: TextStyle(
                      color: Colors.teal, fontFamily: "Timmana", fontSize: 20),
                )
              ],
            ),
          )
        ],
      )),
    ));
  }
}
