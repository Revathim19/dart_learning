void main() {
  List<int> numbers = [5, 10, 7];

  bool isLess10 = true;
  for (int number in numbers) {
    if (number >= 10) {
      isLess10 = false;
      break;
    }
  }
  print(isLess10);

  print(numbers.every((number) => number < 10));
}
