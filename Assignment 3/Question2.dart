void main() {
  double celsius = 30.0;
  double fahrenheit = (celsius * 9 / 5) + 32;
  print("Temperature in Fahrenheit: " + fahrenheit.toString());

  fahrenheit = 86.0;
  celsius = (fahrenheit - 32) * 5 / 9;
  print("Temperature in Celsius: " + celsius.toString());
}
