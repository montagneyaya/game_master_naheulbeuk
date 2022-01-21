import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_master_naheulbeuk/src/resources/notifier/theme_mode.notifier.dart';
import 'package:provider/provider.dart';

class SettingAndroid extends StatefulWidget {
  @override
  _SettingAndroidState createState() => _SettingAndroidState();
}

class _SettingAndroidState extends State<SettingAndroid> {
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
    return Column(
      children: <Widget>[
        Text('Parametres'),
        Divider(),
        Row(
          children: [
            Text('Theme'),
            Consumer<ThemeModeNotifier>(
              builder: (context, themeModeNotifier, child) => Expanded(
                child: Column(
                  children: [
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: const Text('Clair'),
                      secondary: Icon(Icons.light_mode),
                      value: ThemeMode.light,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: const Text('Sombre'),
                      secondary: Icon(Icons.dark_mode),
                      value: ThemeMode.dark,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: const Text('Systeme'),
                      secondary: Icon(Icons.lightbulb),
                      value: ThemeMode.system,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
