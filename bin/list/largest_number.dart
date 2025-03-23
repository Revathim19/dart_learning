import 'dart:io';

List<int> number = [];

void main() {
  for (;;) {
    print('Enter the number:');
    String str = stdin.readLineSync()!;
    if (str == "") {
      break;
    }
    int num = int.parse(str);
    number.add(num);
  }
  print(number);
  int max = number[0];
  for (int i = 0; i < number.length; i++) {
    if (max < number[i]) {
      max = number[i];
    }
  }
  print('Largest number in the list $max');
}
