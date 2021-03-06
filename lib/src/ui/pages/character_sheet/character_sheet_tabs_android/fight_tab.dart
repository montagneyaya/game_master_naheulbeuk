part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_fight_android.dart';

Widget _fightTable(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(
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
  );
}

Widget _fightTable2(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(
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
  );
}

Widget _fightTab(BuildContext context) {
  return Container(
    decoration: background(context, imageFight, BoxFit.contain),
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
                Row(
                  children: [
                    Spacer(flex: 2),
                    Expanded(child: Text('Base')),
                    Expanded(child: Text('Modif.')),
                    Expanded(child: Text('Arme1')),
                    Expanded(child: Text('Arme2')),
                  ],
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16, right: 8),
                        child: Column(
                          children: [
                            Expanded(child: Text('Attaque (AT)')),
                            Expanded(child: Text('Jet (JET)')),
                            Expanded(child: Text('Parade (PRD)')),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            _fightTable(context),
                            _fightTable(context),
                            _fightTable(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Spacer(flex: 2),
                    Expanded(child: Text('Arme3')),
                    Expanded(child: Text('Arme4')),
                    Expanded(child: Text('Arme5')),
                  ],
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16, right: 8),
                        child: Column(
                          children: [
                            Expanded(child: Text('Attaque (AT)')),
                            Expanded(child: Text('Jet (JET)')),
                            Expanded(child: Text('Parade (PRD)')),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            _fightTable2(context),
                            _fightTable2(context),
                            _fightTable2(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Esquive (ESQ)'),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('Base'),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: TextField(
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlignVertical: TextAlignVertical.bottom,
                          ),
                        ),
                      ),
                      Text('Modif.'),
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
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text('PR Naturel'),
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
                                  Text('PR Magique'),
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
                                  Column(
                                    children: [
                                      Expanded(child: Text('Truc de')),
                                      Expanded(child: Text('mauviette')),
                                    ],
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
                                  Text('PR Total'),
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text('Tete'),
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
                                    Text('Torse'),
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
                                    Text('Bras'),
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
                                    Text('Mains'),
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
                                    Text('Bouclier'),
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
                                    Text('Jambes'),
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
                                    Text('Pieds'),
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
