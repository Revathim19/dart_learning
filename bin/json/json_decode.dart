import 'dart:convert';

String integerJson = '5';
String stringJson = '"5"';
String listJson = '''
[1, 2, 3]
''';
String mapJson = '''
{
  "name": "Teja",
  "age": 35
}
''';

void main() {
  int a = jsonDecode(integerJson);
  print(a);

  String b = jsonDecode(stringJson);
  print(b);

  List c = jsonDecode(listJson);
  print(c);
  print(b);

  Map d = jsonDecode(mapJson);
  print(d);
}