void main() {
  List<String> names = ["saba", "haniya", "ahad"];
  
  List<String> upperCaseNames = names.map((name) => name.toUpperCase()).toList();

  //upperCaseNames
  print("UPERCASE : $upperCaseNames");


  List<String> NAME = ["SABA", "HANIYA", "AHAD"];
  
  List<String> lowercase = NAME.map((NAME) => NAME.toLowerCase()).toList();
  //lowercase
  print("LOWERCASE : $lowercase");
  
    Map<String, int> scores = {
    'saba': 10,
    'ayan': 20,
    'hani': 30
  };
  
  List<String> keys = scores.keys.toList();
  print("KEY : $keys"); 
  
  List<int> values = scores.values.toList();
  print("VALUES :$values");

  List<String> words = ['apple', 'banana', 'cherry'];
  
  List<int> wordLengths = words.map((word) => word.length).toList();
  
  print("LENGHT OF EACH ELEMENT: $wordLengths");

  List<int> numbers = [1, 2, 3];
  String result = numbers.map((n) => 'Number $n').join(', ');
  print("NUMBERS :$result"); 

  List<int> number = [2, 4, 6, 7];
  bool allEven = number.map((n) => n * 2).every((n) => n.isEven);
  print(allEven); 

  Map<String, int> inventory = {
    'apple': 10,
    'banana': 15,
    'orange': 5
  };

  Map<String, int> prefixedKeys = inventory.map((key, value) {
    return MapEntry('fruit_$key', value);
  });

  print(prefixedKeys); 

  List<int> no = [2, 4, 6, 7];
  bool allodd = no.map((n) => n * 2).every((n) => n.isOdd);
  print(allodd); 

  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3, 'd': 4};
  
  map1.addAll(map2);
  print(map1); 

  Map<String, int> map = {'a': 1, 'b': 2};
  map.clear();
  print(map); 


  Map<String, int> map4 = {'a': 1, 'b': 2};
  
  bool hasA = map4.containsKey('a');
  print(hasA); 


  Map<String, int> map3 = {'a': 1, 'b': 2};
  
  bool a = map3.containsKey('d');
  print(a); 

  Map<String, int> map9 = {};
  
  bool isEmpty = map9.isEmpty;
  print(isEmpty); 


  Map<String, int> map8 = {'a': 1};
  
  bool isNotEmpty = map8.isNotEmpty;
  print(isNotEmpty); 

  Map<String, int> map0 = {'a': 1, 'b': 2};
  
  int length = map0.length;
  print(length); 

  Map<String, int> map6 = {'a': 1, 'b': 2};
  
  map6.remove('a');
  print(map6); // Output: {b: 2}




}
