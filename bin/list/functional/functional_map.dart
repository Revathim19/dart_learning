void main() {
  List<String> names = ['Teja', 'Revathi'];

  List<int> nameLengths = [];
  for (String name in names) {
    nameLengths.add(name.length);
  }
  print(nameLengths);

  Iterable<int> nameLengthsIterable = names.map((String name) => name.length);
  print(nameLengthsIterable);

  print(names.map((String name) => name.length));
print('_________');
  nameLengths = nameLengthsIterable.toList();
  print(nameLengthsIterable);
}
