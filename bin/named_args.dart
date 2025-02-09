// Positional
int add(int a, int b) {
  return a + b;
}

// Positional optional
int add1(int a, [int b = 0, int c = 0]) {
  return a + b + c;
}

// Named optional
int add2({int a = 0, int b = 0, int c = 0}) {
  return a + b + c;
}

// Named required arguments
int add3({required int a, int b = 0, int c = 0}) {
  return a + b + c;
}

void main() {
  print(add(5, 10));
  print(add1(5));
  print(add1(5, 10));
  print(add1(5, 10, 15));
  print(add2(c: 15));
  print(add3(c: 15, a: 5));
}
