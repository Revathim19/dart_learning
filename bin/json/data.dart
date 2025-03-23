import 'dart:convert';
import 'dart:io';

class Company {
  String name;
  int founded;
  List<Employee> employees;
  List<Customer> customers;

  Company(this.name, this.founded, this.employees, this.customers);
}

class Employee {
  String name;
  int age;
  List<String> skills;
  String position;
  Employee(this.name, this.age, this.skills, this.position);
}

class Customer {
  String name;
  Customer(this.name);
}

void main() {
  /* Company company=Company(
      name: 'Qualcomm',
      founded:1980,
      employees:Employee[name;'Revati',age:'35',
      skils:['Dart','Flutter'],
      position:'Sr.engineer');
*/
  Map company = {
    "name": "Qualcomm",
    "founded": 1980,
    "employees": {
      "name": "Teja",
      "age": 35,
      "skils": ["dart", "flutter"],
      "position": "sr.engineer"
    },
    "customers": {"name": "samsung"},
  };
  String companyJson = jsonEncode(company);
  print(companyJson);
}
