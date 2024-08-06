void main() {
  var fruits = {
    'apple': 'red',
    'banana': 'yellow',
    'orange': 'orange',
    'grape': 'purple',
    'lemon': 'yellow',
  };

  List<String> fruitColors = fruits.values.toList();
  print(fruitColors);

  for (var entry in fruits.entries) {
    if (entry.value == 'yellow') {
      print(entry.key);
    }
  }
}
