import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
