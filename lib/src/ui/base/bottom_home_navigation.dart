import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/themes/icons_rpg.dart';

BottomNavigationBar bottomHomeNavigation(int index, context) {
  return BottomNavigationBar(
    currentIndex: index,
    showUnselectedLabels: true,
    items: [
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.dwarf),
        label: 'Fiche de hero',
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.weapons),
        label: 'Baston',
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.equipment),
        label: 'Equipement spec.'
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.backpack),
        label: 'Equipement',
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.pouch),
        label: 'Bourse',
      ),
    ],
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, '/');
          break;
        case 1:
          Navigator.pushReplacementNamed(context, '/home-fight');
          break;
        case 2:
          Navigator.pushReplacementNamed(context, '/home-equip-spec');
          break;
        case 3:
          Navigator.pushReplacementNamed(context, '/home-equipment');
          break;
        case 4:
          Navigator.pushReplacementNamed(context, '/home-pouch');
          break;
      }
    },
  );
}
