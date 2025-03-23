void main() {
  int? a;
  a = 5;
  a = null;
  int b = 5;
  // b= null;

  /*
  b = a!;
  if(a != null)  {
    b = a;
  }
   */

  int c = a ?? 5;
  if(a != null) {
    c = a;
  } else {
    c = 5;
  }

  bool? isNegative = a?.isNegative;
  if(a != null) {
    isNegative = a.isNegative;
  } else {
    isNegative = null;
  }
}
