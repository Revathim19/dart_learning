void main() {
  var tv = Television();
  tv.VolumeUp();
  tv.Volumedown();
  tv.screen();
}

class Remote {
  void VolumeUp() {
    print("volume up");
  }

  void Volumedown() {
    print("volume down");
  }
}
class Display{
   void screen(){
     print("size of the screen");
   }

}

class Television implements Remote,Display { // we can implement with multiple classes when we use interface,But cannot extends from the multiple  classes
  void VolumeUp() { // mandatory to override methods in the subclass when you use interface
    print("volume up in television");
  }

  void Volumedown() { // mandatory to override methods in the subclass when you use interface
    print("volume down in television");
  }
  void screen(){// mandatory to override methods in the subclass when you use interface
    print("size of the television screen");
  }
}
