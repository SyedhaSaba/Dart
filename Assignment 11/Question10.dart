void main() {
  List<String> originalList = ['apple', 'banana', 'apple', 'orange', 'banana', 'kiwi'];

  List<String> uniqueList = originalList.toSet().toList();

  print('List without duplicates: $uniqueList');
}
