void main()
{
  String number = '123';
  int value = int.parse(number);
  print('value is ' + (value + 5).toString());
  number = '1.5fgdfgdfg';
  double real = double.parse(number);
  print(real);
}