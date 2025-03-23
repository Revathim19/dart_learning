class Student {
  String name;
  double percent;
  Student(this.name,this.percent);

  void set percentage(double totalMarks) {
    percent = (totalMarks / 500) * 100;
  }

  double get percentage {
    return percent;
  }
}

void main() {
  var str = Student("Revathi",0);
  str.percentage= 450;

  print(str.percent);
}
