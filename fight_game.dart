import 'dart:math';
import 'dart:io';


void main() {
  var random = Random();
  int PlayerNo = 1;
  int PlayerHealth = 100;
  int GoblinHealth = 100;
  int PlayerAttack;
  int GoblinAttack;
  var GoblinRandom;

  print('Welcome to the Battle Arena');

  while (true) {
    if (PlayerNo % 2 == 0) {
      print('Goblin\'s Turn');
      GoblinRandom = random.nextInt(100);

      if (GoblinRandom % 2 == 0) {
        print('Goblin chose Attack');
        GoblinAttack = random.nextInt(50);

        PlayerHealth = PlayerHealth - GoblinAttack;
        print('Player\'s Health is $PlayerHealth');
        print('Goblin\'s Health is $GoblinHealth');
        if (PlayerHealth <= 0) {
          print('Goblin wins');
          break;
        }
      } else {
        print('Goblin chose Heal');
        GoblinHealth = GoblinHealth + random.nextInt(50);
        if (GoblinHealth >= 100) {
          GoblinHealth = 100;
        }
        print('the goblin\'s health is $GoblinHealth');
        print('the player\'s health is $PlayerHealth');
      }
    } else {
      print('Player\'s Turn');
      print('Choose Your Option');
      print('1: Attack    2: heal');
      var PlayerChoice = stdin.readLineSync()!;
      var PlayerChoice1 = int.parse(PlayerChoice);

      // print('the value is $PlayerChoice1');
      // print('the type is: ${PlayerChoice1.runtimeType}');
      if (PlayerChoice1 == 1) {
        print('Player chose Attack');
        PlayerAttack = random.nextInt(50);
        GoblinHealth = GoblinHealth - PlayerAttack;
        print('Player\'s Health is $PlayerHealth');
        print('Goblin\'s Health is $GoblinHealth');
        if (GoblinHealth <= 0) {
          print('Players win');
          break;
        }
      } else {
        print('Player chose Heal');
        PlayerHealth = PlayerHealth + random.nextInt(50);
        if (PlayerHealth >= 100) {
          PlayerHealth = 100;
        }
        print('Player\'s Health is $PlayerHealth');
        print('Goblin\'s Health is $GoblinHealth');
      }
      
    }

    PlayerNo = PlayerNo + 1;
    print('\n');
    print('------------------------------------------------');
    
  }
  

}
