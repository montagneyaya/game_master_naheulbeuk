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
        Text(
          'Parametres',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        Divider(),
        Row(
          children: [
            Text(
              'Theme',
              style:
                  Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            Consumer<ThemeModeNotifier>(
              builder: (context, themeModeNotifier, child) => Expanded(
                child: Column(
                  children: [
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: Text(
                        'Clair',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      ),
                      secondary: Icon(
                        Icons.light_mode,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      value: ThemeMode.light,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: Text(
                        'Sombre',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      ),
                      secondary: Icon(
                        Icons.dark_mode,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      value: ThemeMode.dark,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: Text(
                        'Systeme',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      ),
                      secondary: Icon(
                        Icons.lightbulb,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
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
