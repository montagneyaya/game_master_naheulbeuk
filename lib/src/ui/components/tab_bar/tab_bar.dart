import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';

TabBar tabBarAndroid(BuildContext context, List<Widget> tabList) {
  return TabBar(
    labelStyle: Theme.of(context).textTheme.labelLarge,
    indicatorColor: Theme.of(context).brightness == Brightness.dark
        ? tertiaryDarkColor(0.60).toColor()
        : tertiaryColor(0.60).toColor(),
    tabs: tabList,
  );
}
