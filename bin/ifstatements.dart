int math(int opp, int a, int b) {
  if(opp == 0) {
    return a +b;
      }
else if(opp ==1) {
  return a-b;
}
else if (opp == 2) {
  return a*b;
}
else
  return a~/b;
}
void main() {
  print('funtion value is ' + math(4, 20, 10).toString());
}