 void main() {
  List<int> numbers = [1, 2, 3, 4];
  print(numbers[0]);
  for (int number in numbers) {
    print(number);
  }
  for (int i = 0; i < numbers.length; i++) {
    int number = numbers[i];
  }
}
