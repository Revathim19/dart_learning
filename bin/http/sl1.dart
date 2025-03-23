// https://transport.integration.sl.se/v1/sites/5873/departures
import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  Uri uri =
      Uri.parse("https://transport.integration.sl.se/v1/sites/5873/departures");
  Response response = await get(uri);
  String body = response.body;
  Map data = jsonDecode(body);
  List departures = data["departures"];

  print('Enter the Destination:');
  String destin = stdin.readLineSync()!;

  for (int i = 0; i < departures.length; i++) {
    Map departure = departures[i];
    String destination = departure["destination"];
    if (destin == destination) {
      String scheduled = departure["scheduled"];
      DateTime scheduledTime = DateTime.parse(scheduled);
      Duration duration = scheduledTime.difference(DateTime.now());
      String designation = departure["line"]["designation"];
      print(designation + " " + duration.toString() + " " + scheduled);
    }
  }
}
