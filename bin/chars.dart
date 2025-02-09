void main() {
  String name = 'Revati Mannem';
  List<int> charInts = name.codeUnits;
  print('print the name' + name.codeUnits.toString());

  print('0 :' + charInts[0].toString());
  print('1 :' + charInts[1].toString());
  print('2 :' + charInts[2].toString());
  print('3 :' + charInts[3].toString());
  print('4 :' + charInts[4].toString());
  print('5 :' + charInts[5].toString());

  for (int i = 0; i < charInts.length; i++) {
    print(i.toString() + ' :' + charInts[i].toString());
  }

  for(int value in charInts) {
    String char = String.fromCharCode(value);
    print(char + ': ' + value.toString());
  }
}