import 'dart:io';

void main() {
  stdout.write("Enter numbers : ");
  List<int> numbers = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();

  print("Numbers greater than 5:");

  for (int number in numbers) {
    if (number > 5) {
      print(number);
    }
  }
}
