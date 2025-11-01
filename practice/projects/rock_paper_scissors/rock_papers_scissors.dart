import 'dart:io';
import 'dart:math';

// void main() {
//   String? inp;
//   String? userMove;
//   String? aiMove;
//   do {
//     print('Rock, paper or scissors? (r/p/s)');
//     inp = stdin.readLineSync();
//     if (inp == "r" || inp == "p" || inp == "s") {
//       switch (inp) {
//         case "r":
//           userMove = "rock";
//         case "p":
//           userMove = "paper";
//         case "s":
//           userMove = "scissor";
//       }
//       Random random = Random();
//       int randomNumber = random.nextInt(10) + 1;
//       switch (randomNumber) {
//         case (<= 3):
//           aiMove = "rock";
//         case (<= 6 && > 3):
//           aiMove = "paper";
//         case (> 6):
//           aiMove = "scissor";
//       }
//       print("You played : $userMove");
//       print("AI played : $aiMove");
//     } else if (inp == "q") {
//       print("The Program has been quitted");
//       return;
//     } else {
//       print("invalid input");
//     }
//   } while (inp != "q");
// }

enum Move { rock, paper, scissor }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) : ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      switch (playerMove) {
        case 'r':
          playerMove = Move.rock;
        case 'p':
          playerMove = Move.paper;
        case 's':
          playerMove = Move.scissor;
      }
      final random = rng.nextInt(3);
      print(random);
      final aiMove = Move.values[random];
      print("You played : $playerMove");
      print("AI played : $aiMove");
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissor ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissor && aiMove == Move.paper) {
        print("You win");
      } else {
        print("You lose");
      }
    } else if (input == 'q') {
      print("You quit the game");
      break;
    } else {
      print('Invalid input');
    }
  }
}
