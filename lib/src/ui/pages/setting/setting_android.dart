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
        Text('Preference'),
        Row(
          children: [
            Text('Theme'),
            Consumer<ThemeModeNotifier>(
              builder: (context, themeModeNotifier, child) => Expanded(
                child: Column(
                  children: [
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: const Text('Light'),
                      value: ThemeMode.light,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: const Text('Dark'),
                      value: ThemeMode.dark,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: const Text('Systeme'),
                      value: ThemeMode.system,
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
