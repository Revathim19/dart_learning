void main() {
  double a = 4.49;
  print('a: ' + a.toString());
  double floored = a.floorToDouble();
  print('floor: ' + floored.toString());
  double ceil = a.ceilToDouble();
  print('ceil: ' + ceil.toString());

  double rounded = a.roundToDouble();
  print('round: ' + rounded.toString());
}