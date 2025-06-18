import 'dart:io';

class Question {
  String question;
  String answer;

  Question(this.question, this.answer);
}

void main() {
  List<Question> quiz = [
    Question("Capital of France?", "Paris"),
    Question("2 + 2?", "4"),
  ];

  int score = 0;
  for (var q in quiz) {
    print(q.question);
    // Simulating user input
    stdout.write("Your answer: ");
    String userAnswer = stdin.readLineSync()!;

    if (userAnswer.toLowerCase() == q.answer.toLowerCase()) {
      score++;
    }
    else {
      print("Wrong answer. The correct answer was: ${q.answer}\n");
    }
    print("You got score $score ");
  }
}