import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/icons_rpg.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';

BottomNavigationBar bottomHomeNavigation(int index, BuildContext context) {
  return BottomNavigationBar(
    elevation: 0.0,
    backgroundColor: Theme.of(context).colorScheme.background,
    selectedItemColor: Theme.of(context).colorScheme.primaryVariant,
    unselectedItemColor:
        Theme.of(context).colorScheme.onBackground.withOpacity(darkOpacity26),
    currentIndex: index,
    showUnselectedLabels: true,
    items: [
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.dwarf),
        label: 'Fiche de hero',
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.weapons),
        label: 'Baston',
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.equipment),
        label: 'Equipement spec.',
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.backpack),
        label: 'Equipement',
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      BottomNavigationBarItem(
        icon: Icon(IconsRPG.pouch),
        label: 'Bourse',
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
    ],
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, '/');
          break;
        case 1:
          Navigator.pushReplacementNamed(context, '/character-sheet-fight');
          break;
        case 2:
          Navigator.pushReplacementNamed(
              context, '/character-sheet-equip-spec');
          break;
        case 3:
          Navigator.pushReplacementNamed(context, '/character-sheet-equipment');
          break;
        case 4:
          Navigator.pushReplacementNamed(context, '/character-sheet-pouch');
          break;
      }
    },
  );
}
