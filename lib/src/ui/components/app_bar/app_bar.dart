import 'package:flutter/material.dart';

AppBar terreDeFanghAppBar(BuildContext context, Text titleApp, PreferredSizeWidget? bottomApp) {
  return AppBar(
    backgroundColor: Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.primary,
    titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).brightness == Brightness.dark
              ? Theme.of(context).colorScheme.onSurfaceVariant
              : Theme.of(context).colorScheme.onPrimary,
        ),
    title: titleApp,
    bottom: bottomApp,
    foregroundColor: Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).colorScheme.onSurfaceVariant
        : Theme.of(context).colorScheme.onPrimary,
  );
}
