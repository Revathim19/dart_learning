import'dart:io';
void main(){
  print('Enter any number:');
  int n = int.parse(stdin.readLineSync()!);
  int o=1;
  for(int i=1; i<=n; i++) {
    o=o*i;
    print('The out value is ' + o.toString());
  }
  }