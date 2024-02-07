import 'dart:math';
import 'dart:io';

class MathUtils {
  static double squareRoot(double number) {
    return sqrt(number);
  }

  static int factorial(int number) {
    if (number == 0) {
      return 1;
    }
    int result = 1;
    for (int i = 1; i <= number; i++) {
      result *= i;
    }
    return result;
  }

  static double power(double base, double exponent) {
    return pow(base, exponent).toDouble();
  }
}

void main() {
  stdout.write('Enter a number to get square root:');
  double number = double.parse(stdin.readLineSync()!);
  print('Square root of $number: ${MathUtils.squareRoot(number)}');

  stdout.write('Enter a number to get factorial:');
  int factorialNumber = int.parse(stdin.readLineSync()!);
  print(
      'Factorial of $factorialNumber: ${MathUtils.factorial(factorialNumber)}');

  stdout.write('Enter base number:');
  double base = double.parse(stdin.readLineSync()!);
  stdout.write('Enter power:');
  double exponent = double.parse(stdin.readLineSync()!);
  print(
      '$base raised to the power of $exponent: ${MathUtils.power(base, exponent)}');
}
