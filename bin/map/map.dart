void main() {
  Map<String, int> fruits = {
    "Apples": 10,
    "Mangoes": 1000,
    "Oranges": 100,
  };
  print(fruits["Apples"]);
  for (String fruit in fruits.keys) {
    print(fruit);
  }
  for (int count in fruits.values) {
    print(count);
  }
  for (String fruit in fruits.keys) {
    int count = fruits[fruit]!;
    print('$fruit: $count');
  }
}
