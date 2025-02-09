import 'dart:io';
/*int addition (int number, int number1) {
  return number + number1;
}*/

void main() {
  print('Enter the number:');
  int number = int.parse(stdin.readLineSync()!);
  print('Entered number is ${number}');
  print('Enter the number1:');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Entered number is ${number1}');
  print('Enter the operater :');
  String operater = stdin.readLineSync()!;
  print('The entered operater is ' + operater);
  int out = 0;
  if (operater == '+') {
    out = number + number1;
  }
  else if (operater == '-') {
    out = number - number1;
  }
  else {
    out = number * number1;
  }

  print('the out value is ' + out.toString());
}

