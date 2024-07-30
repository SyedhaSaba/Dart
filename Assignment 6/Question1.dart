import "dart:math"; 
void main() { 
  List<int> numbers = [200, 12, 33, 14, 6, 55, 3,3]; 
    
  var smallest = numbers.reduce(min);  
  var largest = numbers.reduce(max); 
  
  print("Smallest value in the list : $smallest"); 
  print("Largest value in the list : $largest"); 
}
