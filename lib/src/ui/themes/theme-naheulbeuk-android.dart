import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/typography.dart';

ThemeData terreDeFanghTheme(BuildContext context) {
  final ThemeData base = ThemeData();
  return base.copyWith(
    textTheme: terreDeFanghText(),
    colorScheme: terreDeFanghColors(),
    brightness: Brightness.light,
  );
}

ThemeData terreDeFanghThemeDark(BuildContext context) {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    textTheme: terreDeFanghTextDark(),
    colorScheme: terreDeFanghColorsDark(),
    brightness: Brightness.dark,
  );
}
