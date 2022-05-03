import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Constructor
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  // Properties
  final Color
      colour; // colour can never be a const since it is set after running, it must be a final
  final Widget cardChild;
  final Function onPress;
  // Extracted widget
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        // Note that when we use the color property for our Container,
        // it is actually just a shorthand for the color property of our BoxDecoration.
        // In order to prevent our app from crashing,
        // we need to put that color property inside the BoxDecoration
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
