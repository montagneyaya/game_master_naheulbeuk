part of 'package:game_master_naheulbeuk/src/ui/home_equip_spec_android.dart';

Widget _potionsMunitionsHomeTab(context) {
  return Container(
    decoration: backgroundPotions,
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
                            Expanded(child: Text('Nombre')),
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
                              Expanded(child: Text('Munitions')),
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
                            Expanded(child: textField(context)),
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
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Expanded(child: Text('Potions/Poisons')),
                              Expanded(child: textField(context)),
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
