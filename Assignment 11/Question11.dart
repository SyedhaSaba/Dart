void main() {
  List<String> originalList = ['apple', 'banana', 'orange', 'kiwi', 'mango'];
  int n = 3;

  List<String> newList = originalList.sublist(0, n);
  print('New list with the first $n elements: $newList');
}
