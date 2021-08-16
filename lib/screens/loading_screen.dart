import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather/services/location.dart';
//as http를 쓰면 앞에 이름을 http로 대체할 수 있음.
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=1a5b183fc3a82b25cc1095a55e549a0b'));
    if (response.statusCode == 200) {
      String data = response.body;
      var lon = jsonDecode(data)['coord']['lon'];
      var city = jsonDecode(data)['name'];
      print(lon);
      print(city);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
