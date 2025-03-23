void main(){
var an=new Animal("Dog","arg",5);
an.Display();

var an1= Animal.myPet("pebby","silent",4);
print("${an1.name} , ${an1.nature} and ${an1.age}");

}

class Animal {
//var name="Dog";
  String name;
  String nature;
  int age;


  Animal(this.name,this.nature,this.age);
  Animal.myPet(this.name,this.nature,this.age);

  void Display() {
    print('Print the aninal name $name');
  }

}

