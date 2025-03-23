import 'dart:io';

class Employee {
  String name;
  int age;
  String position;

  Employee(this.name, this.age, this.position);

  String toString() {
    return 'name:$name,age:$age,position:$position';
  }

  void write(IOSink sink) {
    sink.writeln(name + "," + age.toString() + "," + position);
  }
}

void main() async {
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
    print('position:');
    String position = stdin.readLineSync()!;
    Employee em = Employee(name, age, position);
    em.write(sink);

    print('Write : $em');
  }
  await sink.close();

  List<Employee> str = [];
  List<String> data = file.readAsLinesSync();

  for (String fulldata in data) {
    List<String> splitData = fulldata.split(",");
    Employee em = Employee(splitData[0], int.parse(splitData[1]), splitData[2]);
    str.add(em);
    print('Read:$str');
  }
}
