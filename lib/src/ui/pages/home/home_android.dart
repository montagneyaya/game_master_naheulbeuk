import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_master_naheulbeuk/src/ui/components/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/background/background.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home/home_tabs_android/character_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home/home_tabs_android/quest_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home/home_tabs_android/solo_quest_tab.dart';

class HomeAndroid extends StatefulWidget {
  @override
  _HomeAndroidState createState() => _HomeAndroidState();
}

class _HomeAndroidState extends State<HomeAndroid> {
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
        _characterTab(context),
        _questTab(context),
        _soloQuestTab(context),
      ],
    );
  }
}
