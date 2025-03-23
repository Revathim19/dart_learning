void main() {
//  var rectangle = Rectangle("triangle");
  var rectangle = Rectangle();

  print("");
  //var tr=Triangle.Nymberofquantity("3");
}

class Shape {
  String color = "";

  Shape() {
  //Shape(String color) {
    print("Drawing a shape");
  }
}

class Rectangle extends Shape {
  String size = "";
 Rectangle() {
 // Rectangle(String size) :super("Circle"){
    print("Drawing rectangle");
  }
}
class Triangle extends Shape{
  String quantity="";
 // Triangle.Nymberofquantity(String quantity):super("ddd"){

  //  print("Drawing traingle");

  //}

}
