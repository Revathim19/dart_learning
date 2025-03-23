import 'dart:convert';
import 'dart:io';

class Restaurant {
  String name;
  Address address;
  List<Menu> menu;

  Restaurant({required this.name, required this.address, required this.menu});
}

class Address {
  String lane;
  int doorNum;
  int pinCode;

  Address({required this.lane, required this.doorNum, required this.pinCode});
}

class Menu {
  String name;
  int cost;
  List<String> ingredients;

  Menu(this.name, this.cost, this.ingredients);
}

void main() {
  Restaurant saravana = Restaurant(
      name: 'Saravana Bhavan',
      address: Address(lane: 'Ekedalsvägen', doorNum: 81, pinCode: 17759),
      menu: [
        Menu('Idly', 5, ['Rava', 'Chuttney']),
        Menu('Dosa', 10, ['Rice', 'Dhal'])
      ]);
  List<String> ingredients = ['Rava', 'Chuttney'];
  String ingredientsJson = jsonEncode(ingredients);
  print(ingredientsJson);
  Map saravana1 = {
    "name": "Saravana",
    "open": true,
    "address": {
      "lane": "Ekedalsvägen",
      "doorNum": 81,
      "pinCode": 17759,
    },
  };
  String saravanaJson = jsonEncode(saravana1);
  print(saravanaJson);

  /*File file = File('bin/json/restaurant.json');
  String json = file.readAsStringSync();
  print(json);
  Map data = jsonDecode(json);
  print(data["name"]);
  print(data["open"]);
  print(data["address"]["doorNum"]);*/
}
