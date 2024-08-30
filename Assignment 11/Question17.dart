void main() {
  List<int> originalList = [5, 8, 3, 10, 13, 6, 1, 4, 9];

  List<int> Square = originalList.map((number) => number * number).toList();

  print('List with Square numbers: $Square');
}
