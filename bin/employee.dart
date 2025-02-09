class Employee {
  String name;
  int age;
  String sex;
  String position;

  Employee(this.name, this.age, this.sex, this.position) {

  }

  String toString() {
    return 'name: $name, age: $age, sex: $sex, position: $position';
  }
}

void main() {
  Employee teja = Employee('Teja', 35, 'With all girls', 'Engineer');
  Employee revathi = Employee('Revathi', 70, 'Female', 'Engineer');
  print(teja);
  print(revathi);
}
