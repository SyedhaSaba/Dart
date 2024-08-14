

void main() {

  bool isVowel(String char) {
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  return vowels.contains(char.toLowerCase());
}
  print(isVowel('a')); // true
  print(isVowel('b')); // false
  print(isVowel('E')); // true
}
