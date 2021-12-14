import 'package:flutter/material.dart';

List<Widget> mainTab = [
  Tab(text: 'Fiche'),
  Tab(text: 'Statistiques'),
  Tab(text: 'Competences'),
];

List<Widget> fightTab = [
  Tab(text: 'Armes'),
  Tab(text: 'Armures'),
  Tab(text: 'Baston'),
];

List<Widget> equipmentTab = [
  Tab(text: 'Sac a dos'),
  Tab(text: 'Camping'),
  Tab(text: 'Butins'),
];

List<Widget> jobEquipmentTab = [
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
        Expanded(child: Text('Ingredients')),
        Expanded(child: Text('et bouquins')),
      ],
    ),
  ),
];

List<Widget> pouchTab = [
  Tab(text: 'Bourse'),
];
