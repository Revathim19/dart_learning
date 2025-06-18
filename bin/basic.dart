void main() {
  print('hello world');

  const number = 10;
  final value = 9;
  var String = "Revati";
  print(
      'Name value and number ' + String + value.toString() + number.toString());
  if (number > value) {
    print('number is the highest value');
  } else {
    print('value is the highest value');
  }

  var a = 10;
  var b = 20.2;
  print('a is int - ${a is int}');
  print(a is int);
  print(a is! double);
  print(b is! double);
  print(b is! int);

  print('--------------------------');

  var c;
  var e;
  c ??= 2;
  e ??= 3;
  var d = c + e;

  d++;

  d += 10;
  print(d);

  d -= 5;
  print(d);
  d ~/= 6;
  print(d);

  var list = [1, 2, 3, 4, 5];
  for (var item in list) {
    print('Print the item $item');
  }

  var i = 0;
  while (i < 5) {
    print('I is greater than 5 $i');
    i++;
  }

  {
    var list = [1, 2, 3, 4, 5, 6];

    for (int i = 0; i < list.length; i++) {
      list[i] = i + 1;
      print('I value is $i');

      if (i == 3) {
        print('I value is before break $i');
        break;
      }
      print('I value is after break $i');
    }
  }
  {
    var list = [1, 2, 3, 4, 5, 6];

    for (int i = 0; i < list.length; i++) {
      list[i] = i + 1;
      print('I value is $i');
      if (i == 3) {
        continue;
        print('I value is before continue $i');
      }
      print('I value is after continue $i');
    }
  }
  {
    var a = -10;
    print('The value of a is $a');
    var b = a.abs();
    print('The value of b is $b');
    var c = 12.22;
    d = c.ceil();
    print('The value of d is $d');

    var e = b.compareTo(a);
    print('The value of e is $e');
    var f = a.compareTo(b);
    print('The value of f is $f');
    var p = 19;
    var q = 19;
    var r = p.compareTo(q);
    print('The value of r is $r');

    var s = 12.22;
    var t = s.floor();

    print('The value of t is $t');

    var x = 10;
    var y = 2;
    var z = x.remainder(y);
    print('The value of z is $z');
    {
      var String = '''My name is
      Mannem 
              Revati''';
      print('The value of name is $String');
      print('The length of name is ${String.length}');
      print(String.toLowerCase());
      print(String.toUpperCase());
      var str = ' My name is Revati    ';
      print(str.trim()); //removing space
      var list = str.split(" ");
      print(list);
      var str1 = str.substring(12, 18);
      print(str1);

      bool test = 12 < 15;
      print(test);
    }
  }

  {
    var map = {"username": "tom", "password": "123@"};
    print(map.keys);
    print(map.values);
    var map1 = {"class": "4", "year": "2025"};
    map1.addAll(map);
    print(map1.keys);
    print(map1.values);
    map1.remove("username");
    print(map1.keys);
    print(map1.values);
    print('Print the password ${map['password']}');
    map1.clear();
  }


}
