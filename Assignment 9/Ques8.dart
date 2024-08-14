void main(){
  
// final List<Dynamic> nameList = ["Shahzeb Naqvi", "Abdullah", "Abdullah", "Shahzeb Naqvi", "Abdullah", "Zain"];
// final List<Dynamic> uniqueNameList = nameList.toSet().toList();

final List<String> nameList = ["Shahzeb Naqvi", "Abdullah", "Abdullah", "Shahzeb Naqvi", "Abdullah", "Zain"];
final List<String> uniqueNameList = nameList.toSet().toList();

print(uniqueNameList); 

}