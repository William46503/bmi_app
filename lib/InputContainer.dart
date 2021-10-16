import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  InputContainer(
      {@required this.newColor,
      this.cardChild,
      this.onPress}); //constructor, and {} makes it possible to use key-value pairs, referring to the param name
  final Color newColor; // <- Final keyword forces the variable immutable
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: newColor, //uses color passed in as param
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
