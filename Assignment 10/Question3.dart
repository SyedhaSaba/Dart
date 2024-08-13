void main() {
  int rows = 4;

  for (int i = 1; i <= rows; i++) {
    // Generate the string by multiplying the current row number by itself
    String line = '$i' * i;

    print(line); 
  }
}
