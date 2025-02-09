
  void main() {
    {
      List<int> numbers = [5, 1, 9, 8, 2, 45, 11];
      int max = numbers[0];
      int min = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        if (numbers[i] > max) {
          max = numbers[i];
          print("Max value: $max $i");
        }
        if (numbers[i] < min) {
          min = numbers[i];
          print("Min value: $min $i");
        }
      }
    }
    print ('--------------------------------------');



  }