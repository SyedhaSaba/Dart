
  void main() {
  List<int> numbers = [-1, -2, 3, 2, -5, 6, -7, 8, 9];
  List<int> positiveNumbers = numbers.where((number) => number >= 0).toList();
  print(positiveNumbers);
}

