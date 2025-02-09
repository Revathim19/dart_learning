void main() {
  String value = '432';
  // magic
  {
    int a = 4;
    int b = 3;
    int c = 2;
    int out = a * 100 + b * 10 + c;
    print('Interger is ' + out.toString());
  }

  {
    List<int> numbers = [4, 3, 2];
    int out = numbers[0] * 100 + numbers[1] * 10 + numbers[2];
    print('Interger is ' + out.toString());
  }

  {
    List<int> numbers = [4, 3, 2];
    int out2 = numbers[0] * 100;
    print('Interger is ' + out2.toString());
    int out3 = out2 + numbers[1] * 10;
    print('Interger is ' + out3.toString());
    int out4 = out3 + numbers[2];
    print('Interger is ' + out4.toString());
  }
  {
    List<int> numbers = [4, 3, 2];
    int out2 = numbers[0] * 100;
    print('Interger is ' + out2.toString());
    out2 = out2 + numbers[1] * 10;
    print('Interger is ' + out2.toString());
    out2 = out2 + numbers[2];
    print('Interger is ' + out2.toString());
  }
  print('______________________');
  {
    List<int> numbers = [4, 3, 2, 8, 5];
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      int power = 1;
      for (int j = 0; j < i; j++) {
        power = power * 10;
      }
      print('Power is ' + power.toString());
      out = out + numbers[i] * power;
      print('Interger is ' + out.toString());
    }
  }

  print('______________________');
  {
    List<int> numbers = [4, 3, 2, 8, 5];
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      int power = 1;
      for (int j = 0; j < numbers.length-(i+1); j++) {
        power = power * 10;
      }
      print('Power is ' + power.toString());
      out = out + numbers[i] * power;
      print('Interger is ' + out.toString());
    }
  }
}
