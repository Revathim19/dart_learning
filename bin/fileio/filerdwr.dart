import 'dart:io';

class School {
  String schoolname;
  String studenname;
  int age;
  int standard;

  School(this.schoolname, this.studenname, this.age, this.standard);

  @override
  String toString() {
    return 'School: $schoolname, Student: $studenname, Age: $age, Standard: $standard';
  }

  void write(IOSink sink) {
    sink.writeln('$schoolname,$studenname,$age,$standard');
  }
}

void main() async {
  File file = File('file.txt');
  IOSink sink = file.openWrite();
//try {
  for (;;) {
    print('Enter the schoolname:');
    String schoolname = stdin.readLineSync()!;
    if (schoolname == "") {
      break;
    }
    print('Enter the studenname:');
    String studenname = stdin.readLineSync()!;

    print('Enter the age:');
    int age = int.parse(stdin.readLineSync()!);
    print('Enter the class:');
    int standard = int.parse(stdin.readLineSync()!);

    School sch = School(schoolname, studenname, age, standard);

    sch.write(sink);

    print('Written: $sch');
  }
//}finally{
  Future closeFinished = sink.close();
  await closeFinished;
  print("closing the sink file");

  // }
  if (file.existsSync()) {
    List<String> filedata = file.readAsLinesSync();
    List<School> schools = [];
    for (String data in filedata) {
      List<String> splitdata = data.split(",");
      School sch = School(splitdata[0], splitdata[1], int.parse(splitdata[2]),
          int.parse(splitdata[3]));
      schools.add(sch);
    }
    print('Read: $schools');
  }
}
