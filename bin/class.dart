void main(){
var an=new Animal("Dog");
an.Display();

}

class Animal {
//var name="Dog";
  var name;

  Animal(var name) {
    this.name = name;
  }

  void Display() {
    print('Print the aninal name $name');
  }
}
