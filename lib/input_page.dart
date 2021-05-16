import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottemContainerHeight = 80.0;
const inactiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: "MALE",
                      )),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: "FEMALE",
                      )),
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableCard(colour: activeCardColor)),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                )
              ],
            )),
            Container(
              color: Colors.red,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottemContainerHeight,
            )
          ],
        ));
  }
}
