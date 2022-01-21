part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_fight_android.dart';

Widget _armorsTable(BuildContext context) {
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

Widget _armorsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageArmors, BoxFit.contain),
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
                      Expanded(flex: 4, child: Text('Armures')),
                      Expanded(child: Text('PR Nat.')),
                      Expanded(child: Text('PR Mag.')),
                      Expanded(child: Text('RUP.')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Expanded(child: Text('Tete')),
                          Checkbox(value: false, onChanged: null),
                          Expanded(child: Text('Torse')),
                          Checkbox(value: false, onChanged: null),
                          Expanded(child: Text('Bras')),
                          Checkbox(value: false, onChanged: null),
                          Expanded(child: Text('Mains')),
                          Checkbox(value: false, onChanged: null),
                          Expanded(child: Text('Bouclier')),
                          Checkbox(value: false, onChanged: null),
                          Expanded(child: Text('Jambes')),
                          Checkbox(value: false, onChanged: null),
                          Expanded(child: Text('Pieds')),
                          Checkbox(value: false, onChanged: null),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            _armorsTable(context),
                            _armorsTable(context),
                            _armorsTable(context),
                            _armorsTable(context),
                            _armorsTable(context),
                            _armorsTable(context),
                            _armorsTable(context),
                          ],
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
