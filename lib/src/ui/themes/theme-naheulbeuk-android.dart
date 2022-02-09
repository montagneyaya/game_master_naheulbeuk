import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/typography.dart';

final ThemeData terreDeFanghTheme = ThemeData(
  textTheme: terreDeFanghText(),
  colorScheme: terreDeFanghColors(),
  brightness: Brightness.light,
);

final ThemeData terreDeFanghThemeDark = ThemeData(
  textTheme: terreDeFanghText(),
  colorScheme: terreDeFanghColorsDark(),
  brightness: Brightness.dark,
);
