import 'dart:io';

class Employee {
  String name;
  int age;
  String position;

  Employee(this.name, this.age, this.position);

  String toString() {
    return 'name: $name, age:$age, position:$position';
  }
}

void main() {
  File file = File('employees.csv');
  List<Employee> employees = [];
  double average = 0;

  List<String> fillData = file.readAsLinesSync();
  for (String data in fillData) {
    List<String> employeeData = data.split(",");
    Employee em =
        Employee(employeeData[0], int.parse(employeeData[1]), employeeData[2]);
    employees.add(em);
    average=average+int.parse(employeeData[1]);
    print('Average age is : $average');
  }
  print(average/employees.length);

  /*print(employees);
  int average = 0;
  double out = 0;
  for (int i = 0; i < employees.length; i++) {
    /*Employee employee = employees[i];
    average = average + employee.age;*/
    average = average + employees[i].age;
    print('Adding all employees age: $average');
  }
  out = average / employees.length;
  print(out);*/
}
