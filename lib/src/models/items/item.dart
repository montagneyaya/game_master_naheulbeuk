import 'package:game_master_naheulbeuk/src/models/items/items-type.enum.dart';

class Item {
  String nameItem = '';
  int price = 0;
  int weight = 0;
  ItemsType type;

  Item(this.nameItem, this.price, this.weight, this.type);

  @override
  String toString() {
    return this.nameItem;
  }
}
