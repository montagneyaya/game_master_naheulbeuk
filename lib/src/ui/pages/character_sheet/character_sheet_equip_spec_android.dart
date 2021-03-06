import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_master_naheulbeuk/src/ui/components/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/background/background.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/objects_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/potions_munitions_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/books_ingredients_tab.dart';

class CharacterSheetEquipSpecAndroid extends StatefulWidget {
  @override
  _CharacterSheetEquipSpecAndroidState createState() => _CharacterSheetEquipSpecAndroidState();
}

class _CharacterSheetEquipSpecAndroidState extends State<CharacterSheetEquipSpecAndroid> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        _objectsTab(context),
        _potionsMunitionsTab(context),
        _booksIngredientsTab(context),
      ],
    );
  }
}
