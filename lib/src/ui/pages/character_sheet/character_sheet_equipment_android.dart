import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_master_naheulbeuk/src/ui/components/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/components/text_field/text_field.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/background/background.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/backpack_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/camping_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/treasures_tab.dart';

class CharacterSheetEquipmentAndroid extends StatefulWidget {
  @override
  _CharacterSheetEquipmentAndroidState createState() => _CharacterSheetEquipmentAndroidState();
}

class _CharacterSheetEquipmentAndroidState extends State<CharacterSheetEquipmentAndroid> {
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
        _backpackTab(context),
        _campingTab(context),
        _treasuresTab(context),
      ],
    );
  }
}
