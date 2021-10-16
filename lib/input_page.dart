import 'package:flutter/material.dart';
import 'GenderCard.dart';
import 'InputContainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xff1D1E33);
const inactiveCardColour = Color(0xff111328);

enum GenderChoice { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  GenderChoice selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InputContainer(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderChoice.male;
                          });
                        },
                        newColor: selectedGender == GenderChoice.male
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: GenderCard(
                          labelText: "MALE",
                          genderIcon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InputContainer(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderChoice.female;
                          });
                        },
                        cardChild: GenderCard(
                          labelText: "FEMALE",
                          genderIcon: FontAwesomeIcons.venus,
                        ),
                        newColor: selectedGender == GenderChoice.female
                            ? activeCardColour
                            : inactiveCardColour,
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: InputContainer(
                newColor: Color(0xff1D1E33),
              ),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InputContainer(
                        newColor: Color(0xff1D1E33),
                      ),
                    ),
                    Expanded(
                      child: InputContainer(
                        newColor: Color(0xff1D1E33),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
