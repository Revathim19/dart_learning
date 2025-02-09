import 'dart:io';
/*
bool isEven(int a) {
 // double div = a / 2;
  bool div = a % 2 == 0;
 // double fraction = div - div.floor();
  print('a: ' + a.toString() + ' fraction: ' + div.toString());
  return div;
} */

/// Given an input number [a],
bool isEven(int a) {
  bool div = a % 2 == 0;
  return div;
}
// }

void main() {
  print('Enter the number:');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i < n; i++) {
    bool out = isEven(i);
    if (out == true) {
      print('I am even! ' + i.toString());
    }
  }
}
/*
  if (isEven(5)) {
    print('I am even!');
  } */
