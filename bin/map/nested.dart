void main() {
  Map map = {
    "name": "Saravana bhavan",
    "menu": [
      "Idly",
      "Dosa",
      "Vada",
      "Uthapam",
    ],
    "owners": [
      {
        "name": "Nikhil",
        "age": 38,
      },
      {
        "name": "Padma",
        "age": 35,
      }
    ],
  };

  List menus = map["menu"];
  String firstMenu = menus[0];
  print(firstMenu);
  print(map["menu"][0]);
  print(map["owners"][0]["age"]);
}
