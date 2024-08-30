void main() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  String key = 'fri';
  double Value = 5000.0;

  expenses.update(
    key,
    (expenses) => Value, 
    ifAbsent: () => Value, 
  );

  print('Updated expenses: $expenses');
}
