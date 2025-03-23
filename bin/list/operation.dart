import 'dart:io';

void main() {
  String operation;
  int out = 0;
  for (;;) {
    print('Enter the firtst number:');
    String astr = stdin.readLineSync()!;
    if (astr == "") {
      break;
    }
    int a = int.parse(astr!);

    print('Enter the operater:');
    String operation = stdin.readLineSync()!;
    print('Enter the second number:');
    int b = int.parse(stdin.readLineSync()!);

    if (operation == "+") {
      out = a + b;
    } else if (operation == "-") {
      out = a - b;
    } else if (operation == "*") {
      out = a * b;
    } else {
      throw UnimplementedError();
    }
    print(out);
  }
}
