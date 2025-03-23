void main() {
  var animal = Animal("type", "color");
  animal.color = "black";
  animal.eat();
  Dog dog = Dog("Labrador");
  dog.color = "Grey";
  dog.type = "friendly";
  dog.eat();
  dog.barking();
}

class Animal {
  String type;
  String color;
  Animal(this.type, this.color);
  void eat() {
    print("Eating food");
  }
}

class Dog extends Animal {
  String Breed;
  Dog(this.Breed):super("frnd","blu");
  void barking() {
    print("Dog is Barking on the road");
  }
  void eat() { //overriding with same function
    super.eat();// Accecing parent class method
    print("This is child class");
  }
}
