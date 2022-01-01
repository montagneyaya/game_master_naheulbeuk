part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equipment_android.dart';

Widget _backpackTab(BuildContext context) {
  return Container(
    decoration: background(context, imageBackpack, BoxFit.contain),
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
                      Text('Charge Max'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: textField(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text('Charge Total'),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Poids de l\'equipement'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Poids du sac a dos'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
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
                      Text('Sac a dos'),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: textField(context),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: textField(context),
                        ),
                      ),
                      Text('Kg Max'),
                    ],
                  ),
                ),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Row(
                  children: [
                    Text('Vetements'),
                    Expanded(child: textField(context)),
                  ],
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
