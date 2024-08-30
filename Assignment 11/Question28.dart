void main() {
  printMarksheet(
    subject1: 85,
    subject2: 90,
    subject3: 78,
    subject4: 88,
  );
}

void printMarksheet({
  required int subject1,
  required int subject2,
  required int subject3,
  required int subject4,
}) {
  int totalMarks = subject1 + subject2 + subject3 + subject4;
  double percentage = (totalMarks / 400) * 100;

  print("Marksheet");
  print("Total Marks: $totalMarks");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");
}
