import 'dart:io';

class Attendence {
  String name;
  String presence;
  int clas;

  Attendence(this.name, this.presence, this.clas);

  String toString() {
    return ('name:n$name, presence:$presence,clas:$clas');
  }

  void write(IOSink sink) {
    sink.writeln(name + "," + presence + "," + clas.toString());
  }
}

void main(){
  File file=File('file.txt');
  IOSink sink=file.openWrite();
  for(;;){
    print('name:');
    String name = stdin.readLineSync()!;

    if (name == "") {
      break;
    }
    print('presence:');
    String presence = stdin.readLineSync()!;
    print('clas:');
    int clas = int.parse(stdin.readLineSync()!);

    Attendence At=Attendence(name,presence,clas);
  //  print(At);
    At.write(sink);


  }
}