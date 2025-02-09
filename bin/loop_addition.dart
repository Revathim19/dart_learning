void main() {
  List<int> numbers = [2, 3, 4];
  {
    int out = numbers[0];
    int out1 = out + numbers[1];
    int out2 = out1 + numbers[2];
    print('Interger is ' + out2.toString());
  }
  print('------------');
  {
    int out = numbers[0];
    print('Interger is ' + out.toString());
    out = out + numbers[1];
    print('Interger is ' + out.toString());
    out = out + numbers[2];
    print('Interger is ' + out.toString());
  }
  print('------------');
  {
    int out = 0;
    for (int i = 0; i < numbers.length; i++) {
      out = out + numbers[i];
      print('Interger is ' + out.toString());
    }
    print('Interger is ' + out.toString());
  }
}
