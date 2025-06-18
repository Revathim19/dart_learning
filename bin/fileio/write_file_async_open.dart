import 'dart:io';

class Person {
  String name;
  String country;

  Person(this.name, this.country);

  String toCSV() => '$name,$country';
}

void main() async {
  String filePath = '/tmp/learn_file_write.txt';
  final people = [
    Person('Teja', 'Sweden'),
    Person('Revati', 'Sweden'),
  ];

  final file = File(filePath);
  final sink = file.openWrite();
  for (final person in people) {
    sink.write(person.toCSV());
    await sink.flush();
  }

  await sink.close();
}
