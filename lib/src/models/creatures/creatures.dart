import 'package:game_master_naheulbeuk/src/models/creatures/player-character/people.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/peoples.enum.dart';
import 'package:game_master_naheulbeuk/src/models/items/armor.dart';
import 'package:game_master_naheulbeuk/src/models/items/weapon.dart';

abstract class Creatures {
  String nameCreature = '';
  People people = peopleMonster;
  int healthPoints = 0;
  int astralPoints = 0;
  int experience = 0;
  int attack = 0;
  int throwAttack = 0;
  int parry = 0;
  int evade = 0;
  int spellResistance = 0;
  int courage = 0;
  int naturalPR = 0;
  int magicPR = 0;
  List<Weapon>? weapons;
  List<Armor>? armors;
  int actualHealthPoints = 0;
  int actualAstralPoints = 0;
}
