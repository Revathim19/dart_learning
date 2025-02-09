class Dog {
  String name;

  Dog(this.name);

  void printName() {
    print('Dog name is ' + name);
  }
}

void main() {
  Dog stefi = Dog('Stefi');
  Dog rinku = Dog('Rinku');

  stefi.printName();
}