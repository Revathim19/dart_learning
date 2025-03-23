import 'dart:io';

class Employee {
  String name;
  int age;
  String position;

  Employee(this.name, this.age, this.position);

  void write(IOSink sink) {
    sink.writeln('$name,$age,$position');
  }
}

void main() {
  File file = File('employees.csv');
  IOSink sink = file.openWrite();

  for (;;) {
    print('Enter the name;');
    String name = stdin.readLineSync()!;
    if (name == "") {
      break;
    }
    print('Enter the age');
    int age = int.parse(stdin.readLineSync()!);

    print('Enter the posirion;');
    String position = stdin.readLineSync()!;
    Employee em = Employee(name, age, position);
    em.write(sink);
    print(em);
  }
}
