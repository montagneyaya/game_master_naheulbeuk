import 'package:flutter/material.dart';

TabBar tabBarAndroid(BuildContext context, List<Widget> tabList) {
  return TabBar(
    indicatorColor: Theme.of(context).colorScheme.secondary,
    labelStyle: Theme.of(context).textTheme.bodyText1,
    tabs: tabList,
  );
}
