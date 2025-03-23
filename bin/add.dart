import 'dart:io';

void main() {
  {
    int n = 0;
    List<int> numbers = [];
    while (n != 0) {
      print('Enter the number:');
      n = int.parse(stdin.readLineSync()!);
      numbers.add(n);
      if (n == 2) {
        break;
      }
      print('The number is' + numbers.toString());
    }
  }

  {
    List<int> numbers = [1, 2, 3, 4];
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      int power = 1;
      for (int j = 0; j < i; j++) {
        power = power * 10;
      }
      print('Value of power is' + power.toString()!);
      out = out + numbers[i] * power;
      print('Value of out is' + out.toString()!);
    }
  }
  {
    print('--------------------');
    List<int> numbers = [1, 2, 3, 4];
    int out = 0;

    for (int i = 0; i < numbers.length; i++) {
      int power = 1;
      for (int j = 0; j < numbers.length - (i + 1); j++) {
        power = power * 10;
      }
      print('Value of power is' + power.toString()!);
      out = out + numbers[i] * power;
      print('Value of out is' + out.toString()!);
    }
  }
}
