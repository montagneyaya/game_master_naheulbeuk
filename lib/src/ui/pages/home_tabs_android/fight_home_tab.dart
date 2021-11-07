part of 'package:game_master_naheulbeuk/src/ui/pages/home_fight_android.dart';

Widget _fightTable(context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(child: textField(context)),
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
  );
}

Widget _fightTable2(context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(child: textField(context)),
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
  );
}

Widget _fightHomeTab(context) {
  return Container(
    decoration: backgroundFight,
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
                        padding: EdgeInsets.only(top: 20, right: 10),
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
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Spacer(),
                      Expanded(child: Text('Arme3')),
                      Expanded(child: Text('Arme4')),
                      Expanded(child: Text('Arme5')),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 10),
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
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Base'),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: textField(context),
                        ),
                      ),
                      Text('Modif.'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
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
                                  Text('PR Magique'),
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
                                  Column(
                                    children: [
                                      Expanded(child: Text('Truc de')),
                                      Expanded(child: Text('mauviette')),
                                    ],
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
                                  Text('PR Total'),
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text('Tete'),
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
                                    Text('Torse'),
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
                                    Text('Bras'),
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
                                    Text('Mains'),
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
                                    Text('Bouclier'),
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
                                    Text('Jambes'),
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
                                    Text('Pieds'),
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
