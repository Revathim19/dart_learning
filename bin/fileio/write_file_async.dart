import 'dart:io';

void main() async {
  final content = 'Revathi is dokku. Revathi likes Teja. ${DateTime.now()}';
  String filePath = '/tmp/learn_file_write.txt';

  final file = File(filePath);
  Future future = file.writeAsString(content);
  await future;
}