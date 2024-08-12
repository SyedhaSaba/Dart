void main() {
  String name = "Robert";
  int subject1 = 78;
  int subject2 = 45;
  int subject3 = 62;

  int totalMarks = subject1 + subject2 + subject3;

  double percentage = (totalMarks / 300) * 100;

  print("Name: $name");
  print("Marks in Subject 1: $subject1");
  print("Marks in Subject 2: $subject2");
  print("Marks in Subject 3: $subject3");
  print("Total Marks: $totalMarks");
  print("Percentage: ${percentage}%");

}
