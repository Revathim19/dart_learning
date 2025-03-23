import 'dart:io';

class Employee {
  String name;
  int age;
  String position;

  Employee(this.name, this.age, this.position);

  @override
  String toString() {
    return 'name:$name, age:$age, position:$position';
  }

  // Method to write an employee to the file
  void write(IOSink sink) {
    sink.writeln('$name,$age,$position');
  }
}

void main() async{
  File file = File('file.txt');

  // Open the file for writing (overwrite mode)
  IOSink sink = file.openWrite();

  // Input new data from the user and write it to the file
  while (true) {
    print('Enter employee name (or leave blank to stop):');
    String name = stdin.readLineSync()!;

    if (name.isEmpty) {
      break;  // Stop if the user enters an empty name
    }
    print('Enter age:');
    int age = int.parse(stdin.readLineSync()!);
    print('Enter position:');
    String position = stdin.readLineSync()!;
    Employee em = Employee(name, age, position);
    em.write(sink);

    print('Written: $em');
  }

  // Close the sink to ensure all data is written to the file
 await sink.close();
  print("Data written to file, now closing the sink...");

  // Now, read the data back from the file
  if (file.existsSync()) {
    print('Reading from file...');
    List<String> data = file.readAsLinesSync();
    if (data.isEmpty) {
      print('File is empty.');
    } else {
      List<Employee> employees = [];

      // Parse each line in the file and create Employee objects
      for (String line in data) {
        List<String> splitData = line.split(",");
        if (splitData.length == 3) {
          Employee em = Employee(splitData[0], int.parse(splitData[1]), splitData[2]);
          employees.add(em);
          print('Read: $em');
        }
      }
    }
  } else {
    print('File does not exist.');
  }
}