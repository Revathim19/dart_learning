import 'dart:io';
bool isPrime(int a){
  // TODO check if a is prime

  for(int i=2; i<a; i++) {
    double out=a/i;
    if(out - out.floor() == 0) {
      return false;
    }
  }
  return true;
}
void main() {
  // print('Enter any number:');
  // int n=int.parse(stdin.readLineSync()!);

print('Enter the number :');
int n= int.parse(stdin.readLineSync()!);
for(int i=1; i<n; i++) {
    // print(isPrime(i));
    bool ok = isPrime(i);
    if(ok==true) {
      print(i.toString() + ' is Prime number');
    }


  // print('The prime number ' + i.toString());
}
}