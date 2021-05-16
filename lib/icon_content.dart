import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.genderIcon, this.genderText});

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(),
        Text(
          genderText,
          style: TextStyle(fontSize: 18.0),
        )
      ],
    );
  }
}
