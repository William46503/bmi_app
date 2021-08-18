import 'package:flutter/material.dart';

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
                      ),
                    ),
                    Expanded(
                      child: InputContainer(
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

class InputContainer extends StatelessWidget {
  InputContainer(
      {@required
          this.newColor}); //constructor, and {} makes it possible to use key-value pairs, referring to the param name
  final Color newColor; // <- Final key-word forces the variable immutable

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: newColor, //uses color passed in as param
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
