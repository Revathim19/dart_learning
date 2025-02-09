/// Given a number [a], returns [a] + 2
int add2(int a) {
  int out = a + 2;
  return out;
}

class Dog {
  String name;

  Dog(this.name);

  void sayWooow(/*Dog this*/) {
    print('woow wooow ' + this.name);
  }
}

void main() {
  Dog stefi = Dog('Stefi');
  stefi.sayWooow();
}