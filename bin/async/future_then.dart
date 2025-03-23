Future<int> add10() async {
  int ret = 0;
  for(int i = 0; i < 10; i++) {
    ret += 10;
    print('Adding 10');
    await Future.delayed(Duration(seconds: 5));
  }
  return ret;
}

void main() async {
  Future<int> future = add10();
  future.then((value) {
    print('finished $value');
  });
  for(int i = 0; i < 5; i++) {
    print('running parallely');
    await Future.delayed(Duration(seconds: 5));
  }
}