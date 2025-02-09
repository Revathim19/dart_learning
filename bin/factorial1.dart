void main() {
  int addition= 1+2+3+4+5;
  print('The addition id '+ addition.toString());

  int out = 0;
  for(int i=0; i<=5; i += 1) {
    out = out + i;
    print('i = ' + i.toString() + ' out = ' + out.toString());
  }

  print('Output is ' + out.toString());
}