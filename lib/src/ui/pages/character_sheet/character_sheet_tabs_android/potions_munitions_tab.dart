part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equip_spec_android.dart';

Widget _potionsMunitionsTab(BuildContext context) {
  return Container(
    decoration: background(context, imagePotions, BoxFit.contain),
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
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(child: Text('Nombre')),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(child: Text('Munitions')),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(child: Text('Effets')),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(child: Text('Doses')),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText2,
                                textAlignVertical: TextAlignVertical.bottom,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(child: Text('Potions/Poisons')),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(child: Text('Effets')),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlignVertical: TextAlignVertical.bottom,
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
