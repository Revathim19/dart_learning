import 'dart:async';
void main(){
  print("The program started");
  LoadingFille();
  print("The program ended");
}

Future<String> DownloadFile() {
  Future<String> str = Future.delayed(Duration(seconds: 6), () {
    return "Return the downloaded file";
  });
  return str;
}

LoadingFille() async{
  String file = await DownloadFile();
  print("The loadimg file is $file");
}
