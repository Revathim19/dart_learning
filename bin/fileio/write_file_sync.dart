import 'dart:io';

void main() {
  String content = 'Revathi is dokku. Revathi likes Teja. ${DateTime.now()}';
  String filePath = '/tmp/learn_file_write.txt';

  final file = File(filePath);
  file.writeAsStringSync(content);
}