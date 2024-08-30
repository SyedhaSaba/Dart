void main() {
  int number = 82953;
  int largestDigit = 0;
  String numberStr = number.toString();
  int index = 0;

  do {
    int digit = int.parse(numberStr[index]); 
    if (digit > largestDigit) {
      largestDigit = digit;    }
    index++;
  } while (index < numberStr.length);

  print('The largest digit is: $largestDigit');
}
