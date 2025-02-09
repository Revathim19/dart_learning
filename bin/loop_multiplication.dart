void main() {
  List<int> number = [3, 4, 5];
  int out = 1;
  {
    for (int i = 0; i < number.length; i++) {
      out = out * number[i];
    }
    print('Integer is ' + out.toString());
  }
}
