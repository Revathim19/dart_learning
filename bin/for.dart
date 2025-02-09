void main() {
  List<String> fruits = ["Orange", "banana", "mango", "plum"];

  for (int i = 0; i < fruits.length; i++) {
    String fruit = fruits[i];
    print('Fruit is ' + fruit);
  }

  for(String fruit in fruits) {
    print(fruit);
  }
}
