Future<int> add10() async {
  int ret = 0;
  for (int i = 0; i < 5; i++) {
    ret += 10;
    print('Adding 10');
    await Future.delayed(Duration(seconds: 5));
  }
  return ret;
}

void main() async {
  Future<int> future = add10();
  int value = await future;
  print('Finished $value');
  for (int i = 0; i < 5; i++) {
    print('running not parallely');
    await Future.delayed(Duration(seconds: 5));
  }
}
