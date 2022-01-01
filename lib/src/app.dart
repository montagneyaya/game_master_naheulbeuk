import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_master_naheulbeuk/src/resources/notifier/theme_mode.notifier.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/home/home.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/setting/setting.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-android.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-ios.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-web.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equip_spec.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equipment.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_fight.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_pouch.dart';
import 'package:provider/provider.dart';
part 'package:game_master_naheulbeuk/src/routes/routes.dart';

class TerreDeFanghApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TargetPlatform targetPlatform = Theme.of(context).platform;
    ThemeData? themeDevice;
    ThemeData? themeDeviceDark;
    if (kIsWeb) {
      themeDevice = terreDeFanghWebTheme(context);
      themeDeviceDark = terreDeFanghWebThemeDark(context);
    }
    if (targetPlatform == TargetPlatform.android) {
      themeDevice = terreDeFanghTheme(context);
      themeDeviceDark = terreDeFanghThemeDark(context);
    }
    if (targetPlatform == TargetPlatform.iOS) {
      themeDevice = terreDeFanghIOSTheme(context);
      themeDeviceDark = terreDeFanghIOSThemeDark(context);
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return ChangeNotifierProvider(
      create: (_) => ThemeModeNotifier(),
      child: Consumer<ThemeModeNotifier>(
        builder: (context, ThemeModeNotifier themeModeNotifier, child) {
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
            theme: themeDevice,
            darkTheme: themeDeviceDark,
            themeMode: themeModeNotifier.themeMode,
          );
        },
      ),
    );
  }
}
