void main() {
  List<int> originalList = [5, 3, 8, 1, 2, 7, 4, 6];

  List<int> sortedList = List.from(originalList);
  
  sortedList.sort();

  print('Original list: $originalList');
  
  print('Sorted list: $sortedList');
}
