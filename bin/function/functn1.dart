void main(){
  findPerimeter(2,4);
 int area= getArea(3,4);
 print("the value of area is  $area");
 printCountries("India", "Sweden");
 say("revati", "LoveU");

}
void findPerimeter(int length, int width) => print("The vaile of perimeter is ${2*(length+width)}");
int getArea(int length, int width) => length * width;
void printCountries(String name1, String name2, [String? name3]){
  print("$name1,$name2,$name3");
}
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg'; // says
  print("device is $device");
  if (device != null) {
    print("device is $device");
    result = '$result with a $device';
    print("result is $result");
  }
  return result;
}