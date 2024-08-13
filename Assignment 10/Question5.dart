import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  String lowerCaseInput = input.toLowerCase();
  int vowelCount = 0;
  for (int i = 0; i < lowerCaseInput.length; i++) {
    String char = lowerCaseInput[i];
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
      vowelCount++;
    }
  }
  print("Number of vowels: $vowelCount");
}
