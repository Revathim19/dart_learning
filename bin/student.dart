import 'dart:io';

class Student {
  String name;
  int standard;
  String section;
  Student(this.name, this.standard, this.section);

  String toString() {
    return 'name:$name,cls:$standard,section:$section';
  }

  void writeFile(IOSink sink) {
    sink.writeln(name + "," + standard.toString() + "," + section);
  }
}

void main() {
  File file = File('file.txt');
  IOSink sink = file.openWrite();

  while (true) {
    print('Enter the name:');
    String name = stdin.readLineSync()!;

    if (name == "") {
      break;
    }
    print('Enter the standard:');
    int standard = int.parse(stdin.readLineSync()!);


    print('Enter the section:');
    String section = stdin.readLineSync()!;

    Student st = Student(name, standard, section);
    st.writeFile(sink);
  }
}
