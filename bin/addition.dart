import 'dart:io';

void main() {
  {
    int n = -1;
    List<int> numbers = [];
    while (n != 0) {
      print('Enter the number...:');
      n = int.parse(stdin.readLineSync()!);
      numbers.add(n);
      if (n == 0) {
        break;
      }
      print('Number is ' + n.toString());
    }
    print('Numbers are ' + numbers.toString());
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      out = out + numbers[i];
    }
    print('Addition is ' + out.toString());
  }

  {
    int n = 0;
    while (true) {
      print('Enter the number:');
      List<int> numbers = [];
      n = int.parse(stdin.readLineSync()!);
      numbers.add(n);
      print('Number is ' + numbers.toString());

      if (n <= 0) {
        break;
      }
    }
  }
  {
    print('Enter a number:');
    int num = int.parse(stdin.readLineSync()!);
    bool isPrime = true;
    for (int i = 2; i < num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print('$num is an even number.');
    } else {
      print('$num is not an even number.');
    }
  }
  int c=addition(5, 10);
  int d = addition(5, 10) + 25;
}

int addition(int a, int b) {
  return a + b;
}
