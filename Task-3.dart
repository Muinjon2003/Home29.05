import 'dart:io';

class Player {
  String name;
  int number;
  String position;
  String team;

  Player(this.name, this.number, this.position, this.team);

  void scoreGoal() {
    print('$name with jersey number $number scores a goal!');
  }

  void assistGoal(String playerName) {
    print('$name assists a goal for $playerName.');
  }

  String getInfo() {
    return 'Name: $name\nNumber: $number\nPosition: $position\nTeam: $team';
  }
}

void main() {
  print("Enter player's name:");
  String? name = stdin.readLineSync();
  print("Enter player's number:");
  String? numberInput = stdin.readLineSync();
  int number = int.parse(numberInput!);
  print("Enter player's position:");
  String? position = stdin.readLineSync();
  print("Enter player's team:");
  String? team = stdin.readLineSync();

  Player player = Player(name!, number, position!, team!);

  print('\n' + player.getInfo() + '\n');

  player.scoreGoal();

  player.assistGoal('Neymar');
}
