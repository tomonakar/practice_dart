import 'dart:io';

import 'dart:math';

enum Move {
  Rock,
  Paper,
  Scissors,
}
main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper, scissors? (r/p/s)');
    final input = stdin.readLineSync();

    if (input != 'r' && input != 'p' && input != 's') {
      print('Invalid input');
      break;
    } else {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.Rock;
      } else if (input == 'p') {
        playerMove = Move.Paper;
      } else {
        playerMove = Move.Scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('Your choice is $input');

      if (playerMove == aiMove) {
        print('AI choice is $aiMove');
        print('draw');
      } else if (playerMove == Move.Rock && aiMove == Move.Scissors ||
          playerMove == Move.Paper && aiMove == Move.Rock ||
          playerMove == Move.Scissors && aiMove == Move.Paper) {
        print('AI choice is $aiMove');
        print('You win');
      } else {
        print('AI choice is $aiMove');
        print('You lose');
      }
    }
  }
}
