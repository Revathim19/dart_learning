import 'dart:io';

void main() {
  List<int> numbers = [];

  for (;;) {
    print('Enter the number: ');
    String str = stdin.readLineSync()!;
    if (str == "") {
      break;
    }
    int number = int.parse(str);
    numbers.add(number);
  }
  print(numbers);
  int out = 0;
  for (int i = 0; i < numbers.length; i++) {
    out = out + numbers[i];
  }
  print(out);
}
