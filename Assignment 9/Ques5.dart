void main() {
  List<String> names = ["Ahmed", "Ali", "Shahzeb Naqvi", "Muhmmad", "Ali", "Abdullah", "Ahmed"];
  List<String> uniqueNames = names.toSet().toList();
  print(uniqueNames); 
}
