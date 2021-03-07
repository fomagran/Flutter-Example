import 'package:flutter/material.dart';
import 'package:flutter_app/ScreenB.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/ScreenA.dart';
import 'package:flutter_app/ScreenB.dart';

//Command + S로 저장하고 실행할것
//cmd Shift P 디바이스 바꿀 수 있음
//hot reload 단축키는 cmd s

//페이지 이동시 해당 dart파일을 import 해줘야 한다.

void main() => runApp(MyApp());

//stl이라고 치면 자동으로 StatelessWidget이 만들어진다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //디버그 모드 띠 없애기
      debugShowCheckedModeBanner: false,
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
        title: Text("Introduce"),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        //오른쪽에 버튼 위치하려면 actions
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              print("touch shopping button");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("touch search button");
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/스폰지밥.png"),
                ),
                CircleAvatar(backgroundImage: AssetImage("assets/뚱이.jpeg")),
              ],
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/fomagran.png"),
                backgroundColor: Colors.white,
              ),
              accountEmail: Text("fomagran6@naver.com"),
              accountName: Text("fomagran"),
              onDetailsPressed: () {
                print("arrow  touch");
              },
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
            ListTile(
                leading: Icon(Icons.home, color: Colors.grey[850]),
                title: Text("home"),
                onTap: () {
                  print("home touched");
                },
                trailing: Icon(Icons.add)),
            ListTile(
                leading: Icon(Icons.settings, color: Colors.grey[850]),
                title: Text("Setting"),
                onTap: () {
                  print(" Setting touched");
                },
                trailing: Icon(Icons.add)),
            ListTile(
                leading: Icon(Icons.question_answer, color: Colors.grey[850]),
                title: Text("Q&A"),
                onTap: () {
                  print("Q&A touched");
                },
                trailing: Icon(Icons.add))
          ],
        ),
      ),
      //horizontal 중앙에 배치
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          //padding leading값에 맞춰서 정렬하기
          crossAxisAlignment: CrossAxisAlignment.start,
          //vertical 중앙에 배치하기
          children: <Widget>[
            Center(
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/fomagran.png"),
                    radius: 60)),
            Divider(
              height: 60,
              thickness: 0.5,
              color: Colors.grey[100],
              endIndent: 30,
            ),
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
            SizedBox(
              height: 30,
            ),
            Text(
              "Fomagran Age",
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
              "26",
              style: TextStyle(
                color: Colors.white,
                //글자 간격주기
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text(
                  "iOS and Swift",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text(
                  "Flutter and Dart",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text(
                  "Firebase",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(children: <Widget>[
              ScreenAButton(),
              SizedBox(width: 30),
              ScreenBButton()
            ]),
            Row(
              children: <Widget>[MySnackBar(), SizedBox(width: 60), MyToast()],
            ),
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text(
          "Snack Bar",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.red,
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("show snack bar message"),
          ));
        },
      ),
    );
  }
}

class MyToast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          showToast();
        },
        child: Text(
          "Toast",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.red,
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
      msg: "show toast",
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}

class ScreenAButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Go screen A page"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenA()));
        });
  }
}

class ScreenBButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Go screen B page"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenB()));
        });
  }
}
