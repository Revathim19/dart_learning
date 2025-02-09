int addition(int a, int b) {
  return a+b;
}
void main() {
  int ret = addition(10, 20);
  print(ret);
  print(addition(10, 20));
  print('Addition result is ' + addition(10,20).toString());

}