import 'dart:io';

class Employee {
  String name;
  int age;
  String sex;
  String position;

  Employee(this.name, this.age, this.sex, this.position);

  String toString() {
    return name + "," + age.toString() + "," + sex +","+position;
  }
}
void main() {
  File file = File('file.txt');
  List<String> lines = file.readAsLinesSync();
//  print(lines);
  List<Employee> employees = [];
  for (String line in lines) {
   //print(line);
    List<String> fields = line.split(",");
    Employee em =
        Employee(fields[0], int.parse(fields[1]), fields[2], fields[3]);
    employees.add(em);
   // print(em);
  }
print(employees);
}
/*
void printEmployeeNames(List<Employee> employees) {
  for(Employee employee in employees) {
    print(employee.name);
  }
}*/