import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your body weight is too much and it is not good . Try to exercise more and eat less.';
    } else if (_bmi > 25) {
      return 'Your body weight is higher than it should be. Try to exercise.';
    } else if (_bmi > 18.5) {
      return 'Your body wight is perfect. Great Job!';
    } else {
      return 'Your body weight is lower than it should be. Try to eat more.';
    }
  }
}
