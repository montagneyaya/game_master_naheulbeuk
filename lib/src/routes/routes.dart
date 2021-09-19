part of 'package:game_master_naheulbeuk/src/app.dart';

Map<String, WidgetBuilder> _route() {
  return {
    '/': (context) => HomePage(),
    '/home-fight': (context) => HomeFightPage(),
    '/home-equip-spec': (context) => HomeEquipSpecPage(),
    '/home-equipment': (context) => HomeEquipmentPage(),
    '/home-pouch': (context) => HomePouchPage(),
    '/create-character': (context) => CreateCharacterPage(),
  };
}
