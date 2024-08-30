void main() {
  List<int> originalList = [5, 8, 3, 10, 13, 6, 1, 4, 9];

  List<int> EvenNumbers = originalList.where((number) => number % 2 == 0).toList();

  print('List with Even numbers: $EvenNumbers');
}
