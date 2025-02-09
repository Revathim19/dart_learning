void main() {
 var animal = Animal();
  animal.display();

  var animal1 = Dog();
  animal1.display();
}

class Animal {
  var name = "CAT";
  void display() {
    print('The parent animal name is $name');
  }
}

class Dog extends Animal {
  @override
  void display() {
    print('The child animal name is $name');
  }
}
