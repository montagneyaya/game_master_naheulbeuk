import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';

TabBar bottomMainAndroid(context) {
  return TabBar(
    indicatorColor: kIndigo200,
    labelStyle: Theme.of(context).textTheme.bodyText2,
    tabs: [
      Tab(text: 'Fiche'),
      Tab(text: 'Statistiques'),
      Tab(text: 'Competences'),
    ],
  );
}

TabBar bottomFightAndroid(context) {
  return TabBar(
    indicatorColor: kIndigo200,
    labelStyle: Theme.of(context).textTheme.bodyText2,
    tabs: [
      Tab(text: 'Armes'),
      Tab(text: 'Armures'),
      Tab(text: 'Baston'),
    ],
  );
}

TabBar bottomEquipmentAndroid(context) {
  return TabBar(
    indicatorColor: kIndigo200,
    labelStyle: Theme.of(context).textTheme.bodyText2,
    tabs: [
      Tab(text: 'Sac a dos'),
      Tab(text: 'Camping'),
      Tab(text: 'Butins'),
    ],
  );
}

TabBar bottomJobEquipmentAndroid(context) {
  return TabBar(
    indicatorColor: kIndigo200,
    labelStyle: Theme.of(context).textTheme.bodyText2,
    tabs: [
      Tab(
        child: Column(
          children: [
            Expanded(child: Text('Objets')),
            Expanded(child: Text('magiques')),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Expanded(child: Text('Potions et')),
            Expanded(child: Text('munitions')),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Expanded(child: Text('Ingredients et')),
            Expanded(child: Text('bouquins')),
          ],
        ),
      ),
    ],
  );
}

TabBar bottomPouchAndroid(context) {
  return TabBar(
    indicatorColor: kIndigo200,
    labelStyle: Theme.of(context).textTheme.bodyText2,
    tabs: [
      Tab(text: 'Bourse'),
    ],
  );
}
