void main() {
  List<int> numbersList = [5, 6, 7];
  Iterable<int> numbersIterable = numbersList;
  Set<int> numbersSet = {5, 6, 7};

  // List works in for-in loop
  for (int number in numbersList) {
    print(number);
  }
  // Iterable works in for-in loop
  for (int number in numbersIterable) {
    print(number);
  }
  // Set works in for-in loop
  for (int number in numbersSet) {
    print(number);
  }

  numbersIterable = numbersList;
  numbersList = numbersIterable as List<int>;
  numbersIterable = numbersSet;
  // numbersList = numbersIterable as List<int>;
  numbersList = numbersIterable.toList();
  print('Finished');
}
