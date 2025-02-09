import 'dart:io';

class Employee {
  String name;
  int age;
  String sex;
  String position;

  Employee(this.name, this.age, this.sex,this.position);

  String toString() {
    return 'name:$name,age:$age,sex:$sex,position:$position';
  }

  void writeToFile(IOSink sink) {
    sink.writeln(name + "," + age.toString() + "," + sex +"," +position);
  }
}

void main() {
  File file = File('file.txt');
  IOSink sink = file.openWrite();

  for (;;) {
    print('name:');
    String name = stdin.readLineSync()!;

    if (name == "") {
      break;
    }
    print('age:');
    int age = int.parse(stdin.readLineSync()!);
    print('sex:');
    String sex = stdin.readLineSync()!;

    print('position:');
    String position = stdin.readLineSync()!;

    Employee em = Employee(name, age, sex,position);
    print(em);
    em.writeToFile(sink);
  }
}
