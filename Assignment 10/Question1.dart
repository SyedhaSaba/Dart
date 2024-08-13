void main() {
  void fibonacciSequence(int n) {
    int a = 0, b = 1;
    print(a);

    for (int i = 1; b <= n; i++) {
      print(b);
      int temp = b;
      b = a + b;
      a = temp;
    }
  }

  int number = 10; // input

  fibonacciSequence(number);
}
