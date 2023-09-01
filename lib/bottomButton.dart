import 'package:flutter/material.dart';
import 'constante.dart';


class BottomButton extends StatelessWidget {
  BottomButton({ this.onTap,  this.calc});
  final void Function() onTap;
  final String calc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            calc,
            style: kLabelTextStyle,
          ),
        ),
        width: double.infinity,
        height: kBottomConstHeight,
        decoration: BoxDecoration(
          color: kActiveBottomColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}