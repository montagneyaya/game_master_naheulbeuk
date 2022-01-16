import 'package:flutter/material.dart';

AppBar terreDeFanghAppBar(BuildContext context, Text titleApp, PreferredSizeWidget? bottomApp) {
  return AppBar(
    backgroundColor: Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.secondary,
    titleTextStyle: Theme.of(context).textTheme.headline6!.apply(color: Theme.of(context).colorScheme.onPrimary),
    title: titleApp,
    bottom: bottomApp,
  );
}
