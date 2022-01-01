import 'package:flutter/material.dart';

TabBar tabBarAndroid(BuildContext context, List<Widget> tabList) {
  return TabBar(
    indicatorColor: Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).colorScheme.secondaryVariant
        : Theme.of(context).colorScheme.primaryVariant,
    labelStyle: Theme.of(context).textTheme.bodyText1,
    tabs: tabList,
  );
}
