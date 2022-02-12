part of 'package:game_master_naheulbeuk/src/ui/pages/home/home_android.dart';

Widget _characterTab(BuildContext context) {
  return Container(
    decoration: background(context, imageCharacters, BoxFit.contain),
    child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home/create-character');
          },
          child: Row(
            children: [
              Icon(Icons.add),
              Text(
                'Ajouter un personnage',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: [],
        ),
      ],
    ),
  );
}
