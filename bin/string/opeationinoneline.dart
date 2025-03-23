import 'dart:io';

void main() {
  stdout.write('Enter an equation: ');
  String line = stdin.readLineSync()!;
  print(line);
  List<String> parts = line.split(" ");
  int a = int.parse(parts[0]);

  String op = parts[1];
  int b = int.parse(parts[2]);

  int out = 0;
  if (op == "+") {
    out = a + b;
  } else if (op == "-") {
    out = a - b;
  } else if (op == "*") {
    out = a * b;
  } else {
    throw UnimplementedError();
  }
  print(out);
}
