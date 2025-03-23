void main() {
  String name = 'Teja';
  int age = 35;
  String sex = 'with all hot women';

  print(name);
  print(age);

  print('Name: ' + name + ', Age: ' + (age + 1).toString() + ', Sex: ' + sex);
  print('Name: $name, Age: $age, Sex: $sex');
  print('Name: $name, Age: ${age + 1}, Sex: $sex');
}
