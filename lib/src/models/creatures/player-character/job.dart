import 'package:game_master_naheulbeuk/src/models/creatures/player-character/skill.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/specialization.dart';

class Job {
  String job;
  List<int> courage;
  List<int> intellect;
  List<int> charisma;
  List<int> dexterity;
  List<int> strength;
  int attack;
  int parry;
  int hp;
  int ap;
  int pr;
  List<Specialization> specialization;
  List<Skill> inheritedSkills;
  List<Skill> optionalSkills;

  Job(
      this.job,
      this.courage,
      this.intellect,
      this.charisma,
      this.dexterity,
      this.strength,
      this.attack,
      this.parry,
      this.hp,
      this.ap,
      this.pr,
      this.specialization,
      this.inheritedSkills,
      this.optionalSkills);

  List<List<int>> characteristics() {
    return [
      this.courage,
      this.intellect,
      this.charisma,
      this.dexterity,
      this.strength
    ];
  }

  List<int> fight() {
    return [this.attack, this.parry];
  }

  List<int> points() {
    return [this.hp, this.ap];
  }

  @override
  String toString() {
    return this.job;
  }
}
