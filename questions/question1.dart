import 'dart:io';

void main() {
  stdout.write("Please enter the name of favourite team: ");
  String name = stdin.readLineSync()!;

  stdout.write("enter the number of champions of the team: ");
  int number = int.parse(stdin.readLineSync()!);

  stdout.write("enter the number of players of the team: ");
  int players = int.parse(stdin.readLineSync()!);

  stdout.write(
    "Is this team Participates in the Club World Cup (true/false): ",
  );
  bool worldCup = bool.parse(stdin.readLineSync()!);

  print(
    "\nThe name of favourite team is $name and the number of champions is $number champions and the number of players is $players players and the team participates in the Club World Cup $worldCup",
  );
}
