import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:game_master_naheulbeuk/src/ui/background/background_pouch.dart';
import 'package:game_master_naheulbeuk/src/ui/components/text_field.dart';

part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/pouch_home_tab.dart';

class HomePouchAndroid extends StatefulWidget {
  @override
  _HomePouchAndroidState createState() => _HomePouchAndroidState();
}

class _HomePouchAndroidState extends State<HomePouchAndroid> {
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
        _pouchHomeTab(context),
      ],
    );
  }
}