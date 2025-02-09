void main() {
  int a = 10;
  int b = a;
  String str1 = "sdfdsfsdf";
  int? c = null;
  int d = a + b;
  // int e = a + c;
  if (c != null) {
    int e = a + c;
  }
  c = 5;
  int g = c!;
  int f = a + c!;
}
