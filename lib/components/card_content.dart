import 'package:flutter/material.dart';

import '../constants.dart';

class cardGender extends StatelessWidget {
  final IconData gender;
  final String genderName;

  cardGender({@required this.gender, @required this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 50.0,
        ),
        SizedBox(height: 15.0),
        Text(
          genderName,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
