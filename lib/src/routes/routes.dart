part of 'package:game_master_naheulbeuk/src/app.dart';

Map<String, WidgetBuilder> _route() {
  return {
    '/': (context) => HomePage(),
    '/character-sheet': (context) => CharacterSheetPage(),
    '/character-sheet-fight': (context) => CharacterSheetFightPage(),
    '/character-sheet-equip-spec': (context) => CharacterSheetEquipSpecPage(),
    '/character-sheet-equipment': (context) => CharacterSheetEquipmentPage(),
    '/character-sheet-pouch': (context) => CharacterSheetPouchPage(),
    '/setting': (context) => SettingPage(),
  };
}
