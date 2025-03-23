import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  Uri uri =
      Uri.parse("https://transport.integration.sl.se/v1/sites/5873/departures");
  Response resp = await get(uri);
  String uribody = resp.body;
  // print(uribody);
  Map data = jsonDecode(uribody);

  List depatures = data["departures"];

  //print(depatures);

  for (int i = 0; i < depatures.length; i++) {
    Map departure = depatures[i];
    String direction = departure["direction"];
    Map stoppoint = departure["stop_point"];
    int stopid = departure["stop_point"]["id"];
    String stopname = departure["stop_point"]["name"];

    print(direction);
    print(stoppoint);
    print(stopid);
    print(stopname);
  }
}
