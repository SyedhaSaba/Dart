import 'dart:io';
void main() {
  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the operation : ');
  String operation = stdin.readLineSync()!;

  double result = 0;

  if (operation == "+") {
    result = num1 + num2;
  } else if (operation == "-") {
    result = num1 - num2;
  } else if (operation == "*") {
    result = num1 * num2;
  } else if (operation == "/") {
    if (num2 != 0) {
      result = num1 / num2;
    } else {
      print("Error: Division by zero is not allowed.");
      return;
    }
  } else if (operation == "%") {
    result = num1 % num2;
  } else {
    print("Error: Invalid operation. Please enter +, -, *, /, or %.");
    return;
  }

  print("The result is: $result");
}


