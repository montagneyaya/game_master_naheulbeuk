import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:game_master_naheulbeuk/src/ui/background/background_backpack.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_camping.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_treasures.dart';
import 'package:game_master_naheulbeuk/src/ui/components/text_field.dart';

part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/backpack_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/camping_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/treasures_home_tab.dart';

class HomeEquipmentAndroid extends StatefulWidget {
  @override
  _HomeEquipmentAndroidState createState() => _HomeEquipmentAndroidState();
}

class _HomeEquipmentAndroidState extends State<HomeEquipmentAndroid> {
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
        _backpackHomeTab(context),
        _campingHomeTab(context),
        _treasuresHomeTab(context),
      ],
    );
  }
}