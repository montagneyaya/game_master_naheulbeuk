import 'item.dart';
import 'items-type.enum.dart';
import 'package:game_master_naheulbeuk/src/resources/services/dices.service.dart';

class Weapon extends Item {
  Impact impactPoint;
  int breakFight = 6;

  Weapon(String nameItem, int price, int weight, ItemsType type, this.impactPoint, this.breakFight)
      : super(nameItem, price, weight, type);
}

class Impact {
  int _nbD = 1;
  int _addDamages = 0;
  Dices _dices;

  Impact(this._dices);

  int impact() {
    return this._dices.d6() * this._nbD + this._addDamages;
  }

  @override
  String toString() {
    return '$_nbD D + $_addDamages';
  }
}
