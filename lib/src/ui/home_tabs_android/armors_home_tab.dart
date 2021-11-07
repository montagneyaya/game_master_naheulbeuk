part of 'package:game_master_naheulbeuk/src/ui/home_fight_android.dart';

Widget _armorsTable(context) {
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
                      child: textField(context),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: textField(context),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: textField(context),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: textField(context),
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
                        padding: EdgeInsets.only(left: 10),
                        child: textField(context),
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

Widget _armorsHomeTab(context) {
  return Container(
    decoration: backgroundArmors,
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
                  padding: EdgeInsets.only(left: 15),
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
                /*Spacer(),
                Row(
                  children: [
                    Text('Vetements'),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: textField(context),
                      ),
                    ),
                  ],
                ),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),*/
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
