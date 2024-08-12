void main() {
  int subject1 = 85;
  int subject2 = 90;
  int subject3 = 78;
  int subject4 = 88;

  int totalMarks = subject1 + subject2 + subject3 + subject4;
  double percentage = (totalMarks / 400) * 100;

  print("Marksheet ");
  print("Total Marks: " + totalMarks.toString());
  print("Percentage: " + percentage.toString() + "%");
}
