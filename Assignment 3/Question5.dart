void main() {
  int a = 90;
  int b = 100;

  bool condition1 = a < 50 && a < b;
  bool condition2 = a < 50 || a < b;

  print("condition 1: " + condition1.toString());
  print("condition 2 " + condition2.toString());
}
