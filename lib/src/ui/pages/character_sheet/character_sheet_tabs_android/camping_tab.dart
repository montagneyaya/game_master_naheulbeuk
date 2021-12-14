part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equipment_android.dart';

Widget _campingTable(BuildContext context) {
  return Expanded(
    child: Row(
      children: [
        Expanded(flex: 3, child: textField(context)),
        Expanded(
          flex: 2,
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

Widget _campingTab(BuildContext context) {
  return Container(
    decoration: background(context, imageCamping, BoxFit.contain),
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
                    Expanded(flex: 3, child: Text('Materiel de bivouac')),
                    Expanded(flex: 2, child: Text('Recuperation')),
                    Expanded(child: Text('Poids')),
                  ],
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Tente'))),
                _campingTable(context),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Matelas'))),
                _campingTable(context),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Couverture'))),
                _campingTable(context),
                Spacer(),
                Expanded(child: Text('Bouffes et boissons')),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
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
