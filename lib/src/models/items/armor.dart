import 'package:game_master_naheulbeuk/src/models/items/item.dart';
import 'package:game_master_naheulbeuk/src/models/items/items-type.enum.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/locations.enum.dart';

class Armor extends Item {
  Location location;
  int naturalPR = 0;
  int magicPR = 0;
  int breakFight = 6;

  Armor(String nameItem, int price, int weight, ItemsType type, this.location,
      this.naturalPR, this.magicPR, this.breakFight)
      : super(nameItem, price, weight, type);
}
