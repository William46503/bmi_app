import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                        newColor: Color(0xff1D1E33),
                        cardChild: GenderCard(
                          labelText: "MALE",
                          genderIcon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InputContainer(
                        cardChild: GenderCard(
                          labelText: "FEMALE",
                          genderIcon: FontAwesomeIcons.venus,
                        ),
                        newColor: Color(0xff1D1E33),
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

class GenderCard extends StatelessWidget {
  GenderCard({this.labelText, this.genderIcon});
  final String labelText;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 90,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          labelText,
          style: TextStyle(color: Colors.white, fontSize: 20),
        )
      ],
    );
  }
}

class InputContainer extends StatelessWidget {
  InputContainer(
      {@required this.newColor,
      this.cardChild}); //constructor, and {} makes it possible to use key-value pairs, referring to the param name
  final Color newColor; // <- Final key-word forces the variable immutable
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: newColor, //uses color passed in as param
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
