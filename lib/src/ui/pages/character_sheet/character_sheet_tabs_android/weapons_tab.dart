part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_fight_android.dart';

Widget _weaponsTable(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextField(
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlignVertical: TextAlignVertical.bottom,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          style: Theme.of(context).textTheme.bodyText2,
                          textAlignVertical: TextAlignVertical.bottom,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          style: Theme.of(context).textTheme.bodyText2,
                          textAlignVertical: TextAlignVertical.bottom,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text('Bonus/Malus'),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          style: Theme.of(context).textTheme.bodyText2,
                          textAlignVertical: TextAlignVertical.bottom,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _weaponsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageWeapons, BoxFit.contain),
    child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height -
                Scaffold.of(context).appBarMaxHeight! -
                kToolbarHeight -
                kBottomNavigationBarHeight,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Spacer(),
                      Expanded(flex: 4, child: Text('Armements')),
                      Expanded(child: Text('PI')),
                      Expanded(child: Text('RUP.')),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            Expanded(child: Text('Arme 1')),
                            Checkbox(value: false, onChanged: null),
                            Expanded(child: Text('Arme 2')),
                            Checkbox(value: false, onChanged: null),
                            Expanded(child: Text('Arme 3')),
                            Checkbox(value: false, onChanged: null),
                            Expanded(child: Text('Arme 4')),
                            Checkbox(value: false, onChanged: null),
                            Expanded(child: Text('Arme 5')),
                            Checkbox(value: false, onChanged: null),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            _weaponsTable(context),
                            _weaponsTable(context),
                            _weaponsTable(context),
                            _weaponsTable(context),
                            _weaponsTable(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Text('Degats naturels supplementaires'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TextField(
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlignVertical: TextAlignVertical.bottom,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Degats magiques supplementaires'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TextField(
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlignVertical: TextAlignVertical.bottom,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
