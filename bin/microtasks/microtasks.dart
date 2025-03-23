int addition(int a, int b) {
  return a + b;
}

Future<int> additionAsync(int a, int b) async {
  return a + b;
}

void printInt(int v) {
  print(v);
}

void main() {
  print(addition(5, 10));
  final future = additionAsync(10, 10);
  future.then(printInt);
}
