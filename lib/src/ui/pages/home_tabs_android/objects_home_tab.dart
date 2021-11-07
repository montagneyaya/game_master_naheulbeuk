part of 'package:game_master_naheulbeuk/src/ui/pages/home_equip_spec_android.dart';

Widget _objectsHomeTab(context) {
  return Container(
    decoration: backgroundObjects,
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
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(child: Text('Objets speciaux')),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Expanded(child: Text('Bonus / Effets')),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(child: Text('Charges')),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                            Expanded(child: textField(context)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Expanded(child: Text('Objets charges')),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Expanded(child: Text('Effets')),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
                              Expanded(child: textField(context)),
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
