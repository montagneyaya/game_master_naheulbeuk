import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:game_master_naheulbeuk/src/ui/background/background_objects.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_potions.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_books.dart';
import 'package:game_master_naheulbeuk/src/ui/components/text_field.dart';

part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/objects_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/potions_munitions_home_tab.dart';
part 'package:game_master_naheulbeuk/src/ui/pages/home_tabs_android/books_ingredients_home_tab.dart';

class HomeEquipSpecAndroid extends StatefulWidget {
  @override
  _HomeEquipSpecAndroidState createState() => _HomeEquipSpecAndroidState();
}

class _HomeEquipSpecAndroidState extends State<HomeEquipSpecAndroid> {
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
        _objectsHomeTab(context),
        _potionsMunitionsHomeTab(context),
        _booksIngredientsHomeTab(context),
      ],
    );
  }
}