import 'package:flutter/material.dart';
import 'constante.dart';


class GenderCard extends StatelessWidget {
  GenderCard({ this.genderIcon,  this.textGender});

  final Icon genderIcon;
  final String textGender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        SizedBox(
          height: 30.0,
        ),
        Text(
          textGender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}