void main() {
  List<int> originalList = [1, 2, 3, 2, 4, 5, 1, 6, 4];

  List<int> uniqueList = originalList.toSet().toList();

  print('List without duplicates: $uniqueList');
}
