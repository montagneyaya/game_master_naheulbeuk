import 'package:flutter/material.dart';

Widget menuApp(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.background,
    child: ListView(
      children: [
        ListTile(
          leading: Icon(
            Icons.home_outlined,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          title: Text(
            'Accueil',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings_outlined,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          title: Text(
            'Parametres',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/setting');
          },
        ),
      ],
    ),
  );
}
