part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_pouch_android.dart';

Widget _pouchTab(BuildContext context) {
  return Container(
    decoration: background(context, imagePouch, BoxFit.contain),
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
                  child: Row(
                    children: [
                      Text('Bourse'),
                      Expanded(flex: 3, child: textField(context)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: textField(context),
                        ),
                      ),
                      Text('Max')
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Berylium (500 PO)'),
                      Expanded(child: textField(context)),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Thritil (100 PO)'),
                      Expanded(child: textField(context)),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Pieces d\'Or'),
                      Expanded(child: textField(context)),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Pieces d\'Argent'),
                      Expanded(child: textField(context)),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(flex: 4, child: Text('Gemmes')),
                      Expanded(child: Text('U.G.')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(flex: 4, child: textField(context)),
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
                      Expanded(flex: 4, child: textField(context)),
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
                      Expanded(flex: 4, child: textField(context)),
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
                      Expanded(flex: 4, child: textField(context)),
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
                      Expanded(flex: 4, child: textField(context)),
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
                  child: Row(
                    children: [
                      Text('Autres monnaies'),
                      Expanded(child: textField(context)),
                    ],
                  ),
                ),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
