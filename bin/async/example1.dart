Future<String> FetchData() async {
  print("Fetch the data");
  await Future.delayed(Duration(seconds: 3));
  return "Fetching the data is done";
}

void main() async {
  print("The main process is started");
  String Str = await FetchData();
  print("Status --> $Str");

  print("The main process is ended");
}
