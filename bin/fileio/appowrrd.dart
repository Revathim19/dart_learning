import 'dart:io';

class Hospital {
  String doctor_name;
  String profession;
  String patient_name;
  int patient_age;
  String problem;
  int appointment_date;

  Hospital(this.doctor_name, this.profession, this.patient_name,
      this.patient_age, this.problem, this.appointment_date);

  void write(IOSink sink) {
    sink.writeln(
        '$doctor_name,$profession,$patient_name,$patient_age,$problem,$appointment_date');
  }
  String toString() {
    return 'doctor_name:$doctor_name,profession:$profession,patient_name:$patient_name,patient_age:$patient_age,problem:$problem,appointment_date:$appointment_date';
  }

}

void main() async {
  File file = File('list.csv');
  IOSink sink = file.openWrite();
  for (;;) {
    print('Doctor name:');
    String doctor_name = stdin.readLineSync()!;
    print('Doctor profession:');
    String profession = stdin.readLineSync()!;

    if (profession == "general") {
      break;
    }
    print('Enter the patient name:');
    String patient_name = stdin.readLineSync()!;
    print('Enter the patient age:');
    int patient_age = int.parse(stdin.readLineSync()!);
    print('Enter the patient problem:');
    String problem = stdin.readLineSync()!;
    print('Appointment date:');
    int appointment_date = int.parse(stdin.readLineSync()!);
    Hospital hs = Hospital(doctor_name, profession, patient_name, patient_age,
        problem, appointment_date);
    hs.write(sink);

    await sink.close();
  }

  List<Hospital> hsp = [];
  List<String> data = file.readAsLinesSync();
  for (String fulldata in data) {
    List<String> splitData = fulldata.split(",");
    Hospital hs = Hospital(splitData[0], splitData[1], splitData[2],int.parse(splitData[3]),splitData[4],int.parse(splitData[5]));
    hsp.add(hs);
    print('$hsp');
  }
}
