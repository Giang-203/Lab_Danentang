import 'dart:math';

class CalculatorBrain {
  // Sử dụng `required` cho các tham số
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  // Tính toán BMI
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // BMI = weight (kg) / (height (m) ^ 2)
    return _bmi.toStringAsFixed(1); // Làm tròn kết quả đến 1 chữ số thập phân
  }

  // Trả về kết quả dựa trên BMI
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // Giải thích kết quả BMI
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
