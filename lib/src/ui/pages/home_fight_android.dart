import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:game_master_naheulbeuk/src/ui/background/background_armors.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_fight.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_weapons.dart';
import 'package:game_master_naheulbeuk/src/ui/components/text_field.dart';

part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/fight_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/weapons_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/armors_home_tab.dart';

class HomeFightAndroid extends StatefulWidget {
  @override
  _HomeFightAndroidState createState() => _HomeFightAndroidState();
}

class _HomeFightAndroidState extends State<HomeFightAndroid> {
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
        _weaponsHomeTab(context),
        _armorsHomeTab(context),
        _fightHomeTab(context),
      ],
    );
  }
}
