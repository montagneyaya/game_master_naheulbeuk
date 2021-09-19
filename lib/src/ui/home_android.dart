import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:game_master_naheulbeuk/src/ui/background/background_main.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_skills.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_statistics.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/modify_elements.dart';

part 'package:game_master_naheulbeuk/src/ui/home_tabs_android/main_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/home_tabs_android/skills_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/home_tabs_android/statistics_home_tab.dart';

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
        _mainHomeTab(context),
        _statisticsHomeTab(context),
        _skillsHomeTab(context),
      ],
    );
  }
}
