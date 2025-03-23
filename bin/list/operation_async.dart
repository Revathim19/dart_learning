import 'dart:io';

Future<void> printx() async {
  while (true) {
    print('Hello');
    await Future.delayed(Duration(seconds: 2));
  }
}

Future<void> main() async {
  printx();
  // String line = stdin.;

}
