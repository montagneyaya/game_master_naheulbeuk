import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_master_naheulbeuk/src/ui/components/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/components/text_field.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/background/background.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/fight_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/weapons_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_tabs_android/armors_tab.dart';

class CharacterSheetFightAndroid extends StatefulWidget {
  @override
  _CharacterSheetFightAndroidState createState() =>
      _CharacterSheetFightAndroidState();
}

class _CharacterSheetFightAndroidState
    extends State<CharacterSheetFightAndroid> {
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
        _weaponsTab(context),
        _armorsTab(context),
        _fightTab(context),
      ],
    );
  }
}
