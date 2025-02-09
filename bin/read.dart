import 'dart:io';

void main() {
  print('what is your name:');
  String name= stdin.readLineSync()!;
  print('Entered name is ' + name);
  print('what is your age:');
  int age =int.parse(stdin.readLineSync()!);
  print('Entered age is ' + age.toString());

}