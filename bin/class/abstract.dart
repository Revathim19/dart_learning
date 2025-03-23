void main() {
  var rect=Rectangle();
  rect.draw();
}

abstract class Shape {
  // cannot be intsantiated with the new expression

  void draw(); // abtsract method with out body
void myshape(){
  print("draw a shape");
}
}

class Rectangle extends Shape {
  String size = "";

  void draw() { // overriding abstract class draw method
    print("draw the rectangle shape");

  }
}
