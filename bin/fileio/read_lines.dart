import 'dart:io';
import 'dart:math';

class Question {
  int a;
  String operation;
  int b;

  Question(this.a, this.operation, this.b);

  int answer() {
    if (operation == "+") {
      return a + b;
    } else if (operation == "-") {
      return a - b;
    } else if (operation == "*") {
      return a * b;
    } else {
      throw UnsupportedError('Operation $operation is not supported');
    }
  }

  bool isCorrect(int maybeAnswer) {
    int expected = answer();
    return expected == maybeAnswer;
  }

  String toString() {
    return a.toString() + " " + operation + " " + b.toString();
  }
}

Random rand = Random();

Question random() {
  int operation = rand.nextInt(3);
  String op;
  if (operation == 0) {
    op = '+';
  } else if (operation == 1) {
    op = '-';
  } else {
    op = '*';
  }
  return Question(rand.nextInt(50), op, rand.nextInt(50));
}

void main() {
  /* print(Question(7, '+', 2).answer()); // 9
  print(Question(5, '-', 2).answer()); // 3
  print(Question(4, '*', 3).answer()); // 12

  print(Question(7, '+', 2).isCorrect(9)); // true
  print(Question(7, '+', 2).isCorrect(8)); // false
  print(Question(7, '*', 2).isCorrect(14)); // true
  print(Question(7, '*', 2).isCorrect(31)); // false

  print(random());*/
int asked=0;
int correct=0;
int wrong=0;
  for (;;) {
    Question q = random();
    asked++;
    stdout.write(q.toString() + " = ");
    String str = stdin.readLineSync()!;
    if (str == "") {
      break;
    }
    int ans = int.parse(str);

    if (q.answer() == ans) {
      print('Answer is correct ');
      correct++;
    } else {
      print('Answer is wrong');
      wrong++;
    }
    print('Asked: $asked, Correct: $correct, Wrong: $wrong');
  }

print('Asked: $asked, Correct: $correct, Wrong: $wrong');

}
