import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:game_master_naheulbeuk/src/ui/pages/create-character.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/home.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-android.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-ios.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-web.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/home_equip_spec.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/home_equipment.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/home_fight.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/home_pouch.dart';

part 'package:game_master_naheulbeuk/src/routes/routes.dart';

class TerreDeFanghApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TargetPlatform targetPlatform = Theme.of(context).platform;
    ThemeData? themeDevice;
    if (kIsWeb) themeDevice = terreDeFanghWebTheme();
    if (targetPlatform == TargetPlatform.android)
      themeDevice = terreDeFanghTheme();
    if (targetPlatform == TargetPlatform.iOS)
      themeDevice = terreDeFanghIOSTheme();
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('fr', 'FR'),
        ],
        title: 'Terre de Fangh',
        initialRoute: '/',
        routes: _route(),
        theme: themeDevice);
  }
}
