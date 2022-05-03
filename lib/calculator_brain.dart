import 'dart:math';

class CalculatorBrain {
  // Constructor
  CalculatorBrain({this.height, this.weight});
  // Properties
  final int height;
  final int weight;

  double _bmi;

  // Calculate the actual Body Mass Index
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // height is in cm
    // Round the bmi and turn it into a string so that it can fit in the screen
    return _bmi.toStringAsFixed(1);
  }

  // Get the result
  String getResult() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi < 24.9) {
      return 'Healthy Weight';
    } else if (_bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  // Get the interpretation
  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'If your BMI is less than 18.5, it falls within the underweight range.';
    } else if (_bmi < 24.9) {
      return 'If your BMI is 18.5 to 24.9, it falls within the normal or Healthy Weight range.';
    } else if (_bmi < 29.9) {
      return 'If your BMI is 25.0 to 29.9, it falls within the overweight range.';
    } else {
      return 'If your BMI is 30.0 or higher, it falls within the obese range.';
    }
  }
}
