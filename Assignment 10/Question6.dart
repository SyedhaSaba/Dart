import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  int i = 1;

  while (i <= n) {
    factorial *= i;
    i++;
  }

  print("Factorial of $n is $factorial");
  
}
