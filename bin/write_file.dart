import 'dart:io';

Future<void> main() async {
  File file = File('file.txt');
  IOSink sink = file.openWrite();
  for (;;) {
    print('Enter somthing:');
    String n = stdin.readLineSync()!;
    if (n == "") {
      break;
    }
    sink.writeln(n);
    await sink.flush();
  }
  await sink.close();
  // print('Display n' + n);
}
