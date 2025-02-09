void main() {
  int out = 0;
  {
    for (int i = 1; i < 5; i++) {
      int n = 1;

      for (int j = 0; j < i; j++) {
        n = n * i;
        print('The n value $n');
      }
      out = out + n;
      print('The out value $out');
    }
  }
  {
    int n = 3;
    int out = 1;

    for (int i = 1; i <= 10; i++) {
      out = n * i;
      print('The out value $out');
    }
  }
  {
    int out = 0;

    for (int i = 0; i <= 10; i++) {
      out = out + i;
      print('The out value $out');
    }

    {
      int n = 10;
      int a = 0, b = 1;

      print('Fibonacci Sequence');

      for (int i = 0; i < n; i++) {
        print('The a value $a');
        int next = a + b;
        print('The a+b value $next');

        a = b;
        b = next;
        print('The b value $b');
      }
    }
  }
  {
    int day = 1;
    int hour = 2;
    int min = 60;
    int curret_time = 0;
    for (int i = 0; i < hour; i++) {
      int current_min = 0;
      for (int j = 0; j < min; j++) {
        if (current_min == 59) {
          current_min = 00;
          // print('The curret_time $curret_time . $current_min');
        } else {
          current_min = current_min + 1;
          print('The curret_time $curret_time . $current_min');
        }
      }
      curret_time = curret_time + 1;

      print('The curret_time $curret_time . $current_min');
    }
  }
/*
  {
    int hour = 2;
    int min = 60;
    int curret_time = 0;
    for (int i = 0; i < hour; i++) {
      int current_min = 0;
      for (int j = 0; j < min; j++) {
        int count_sec = 0;

        for (int k = 0; k < 60; k++) {
          if (count_sec == 59) {
            count_sec = 0;
          } else {
            count_sec = count_sec + 1;
            print('upadte every second  $count_sec');
          }
        }
        if (current_min == 59) {
          current_min = 0;
        } else {
          current_min = current_min + 1;
          print('Current min $current_min');
        }
      }
      curret_time = curret_time + 1;
      print('The curret_time $curret_time . $current_min');
    }
  }
  */


}
