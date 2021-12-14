part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equipment_android.dart';

Widget _treasuresTab(BuildContext context) {
  return Container(
    decoration: background(context, imageTreasures, BoxFit.contain),
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
                Text('Butins a revendre et objets de quetes'),
                Expanded(child: textField(context)),
                Expanded(child: textField(context)),
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
      ),
    ),
  );
}
