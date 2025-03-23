// https://www.trafiklab.se/api/trafiklab-apis/sl/transport/
// https://transport.integration.sl.se/v1/sites/5873/departures

// Request:
// METHOD: GET, POST, PUT, DELETE
// URL: http://sl.se/transport/departures?time=2025-02-12
// HEADERS: ....
// BODY:

import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  Uri uri =
  Uri.parse('https://transport.integration.sl.se/v1/sites/5873/departures');
  Response response = await get(uri);
  //print(response.body);


  //dynamic json= jsonDecode(response.body);
  Map json = jsonDecode(response.body);
  //print(json);
  List departures = json['departures'];
  for (int i=0;i<departures.length; i++) {
    Map departure = departures[i];
    Map lines=departure["line"];
    String transport=lines["transport_mode"];
  //  print(transport);
    if(transport=="TRAIN") {
      String dest=departure["destination"];

      print(dest);
    }

  }
}