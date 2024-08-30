void main() {
  List<int> originalList = [5, -3, 8, -1, 2, -7, 4, 6, -2];

  List<int> positiveNumbers = originalList.where((number) => number >= 0).toList();

  print('List with positive numbers: $positiveNumbers');
}
