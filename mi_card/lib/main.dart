import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String phoneNumber = "+82 10 2240 6112";

  void changePhoneNumber() {
    setState(() {
      phoneNumber = "+82 10 1234 5678";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            width: 150,
            height: 20.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "$phoneNumber",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "Timmana",
                        fontSize: 20),
                  ))),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "fomagran6@naver.com",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "Timmana",
                        fontSize: 20),
                  ))),
          FlatButton(
            onPressed: () {
              changePhoneNumber();
              print("$phoneNumber");
            },
            child: Card(
                color: Colors.blueAccent,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                    title: Center(
                  child: Text(
                    "Change PhoneNumber!",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Timmana",
                        fontSize: 20),
                  ),
                ))),
          )
        ],
      )),
    ));
  }
}
