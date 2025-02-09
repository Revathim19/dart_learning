int multiply(int a , int b) {
  return a * b;
}
int addition(int c,int d,int e) {
  return c+d+e;
}
int sub(int p, int q,int r) {
  return p - q - r;
  }
  int div(int x,int y){
  return x~/y;
}
  void main() {
  int mul = multiply(10,20);
    print(multiply(10,20));
  print('The Result is '+ multiply(10,20).toString() );
  print ('The addition result is ' + (addition (20,60,(multiply (10,20))).toString()));
  print ('The substarction result is ' + sub(500,(addition (200,2,20)),(multiply (10,20))).toString());
  print ('The div result is '+ div(sub((addition(10,20,30)),(multiply(5,2)),15),5).toString());

  }


