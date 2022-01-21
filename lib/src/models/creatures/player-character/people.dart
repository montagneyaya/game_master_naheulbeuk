import 'package:game_master_naheulbeuk/src/models/creatures/player-character/job.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/skill.dart';

class People {
  String people;
  List<int> courage;
  List<int> intellect;
  List<int> charisma;
  List<int> dexterity;
  List<int> strength;
  int attack;
  int parry;
  int hp;
  int pr;
  int load;
  List<Job> jobs;
  List<Skill> birthSkills;
  List<Skill> optionalSkills;

  People(this.people, this.courage, this.intellect, this.charisma, this.dexterity, this.strength, this.attack,
      this.parry, this.hp, this.pr, this.load, this.jobs, this.birthSkills, this.optionalSkills);

  List<List<int>> statistics() {
    return [this.courage, this.intellect, this.charisma, this.dexterity, this.strength];
  }

  List<int> fight() {
    return [this.attack, this.parry];
  }

  @override
  String toString() {
    return this.people;
  }
}
