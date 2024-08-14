void main() {

  List<int> numbers = [5, 2, 8, 1, 9, 3, 7, 6, 4];
  numbers.sort();
  int smallest = numbers.first;
  int largest = numbers.last;
  print('Largest: $largest, Smallest: $smallest');
}
