import 'dart:math';

class Calculator {
  double _bmi = 0;
  Calculator({required this.weight, required this.height});
  final int height;
  final int weight;
  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return "OVERWEIGHT";
    else if (_bmi > 18.5)
      return "NORMAL";
    else
      return "UNDERWEIGHT";
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return "Your BMI result is quite large, you should exercise.";
    else if (_bmi > 18.5)
      return "You have a normal body weight. Good job";
    else
      return "Your BMI result is quite low, you should eat more.";
  }
}
