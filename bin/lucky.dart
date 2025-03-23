import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int asked = 0;
  int guessed = 0;
  int wrong = 0;
  for (;;) {
    stdout.write('Guess the number: ');
    asked++;
    String guessStr = stdin.readLineSync()!;
    if (guessStr.isEmpty) {
      break;
    }
    int guess = int.parse(guessStr);

    int check = random.nextInt(10);
    // print(check);
    if (guess == check) {
      print('Lucky guess');
      guessed++;
    } else {
      print('Unlucky : $check');
      wrong++;
    }
    print('Asked: $asked, Guessed:$guessed, worng: $wrong');
  }
}
