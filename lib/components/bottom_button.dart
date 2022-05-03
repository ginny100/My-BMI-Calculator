import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  // Constructor
  BottomButton({@required this.onTap, @required this.buttonTitle});
  // Properties
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(
            bottom: 20.0), // Make sure 'CALCULATE' is in the safe area
        width: double.infinity, // full width of the screen
        height: kBottomContainerHeight,
      ),
    );
  }
}
