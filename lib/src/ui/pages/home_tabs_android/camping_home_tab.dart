part of 'package:game_master_naheulbeuk/src/ui/pages/home_equipment_android.dart';

Widget _campingTable(context) {
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

Widget _campingHomeTab(context) {
  return Container(
    decoration: backgroundCamping,
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
                    Expanded(child: Text('Poid')),
                  ],
                ),
                Expanded(child: Text('Tente')),
                _campingTable(context),
                Expanded(child: Text('Matelas')),
                _campingTable(context),
                Expanded(child: Text('Couverture')),
                _campingTable(context),
                Spacer(flex: 2),
                Expanded(child: Text('Bouffes et boissons')),
                Expanded(child: textField(context)),
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
