part of 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_android.dart';

Widget _statisticsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageStatistics, BoxFit.contain),
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
                      Text('Niveau'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Experience'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
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
                      Text('Points de Destin'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Energie Vital (EV)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Energie Astral (EA)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
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
                      Text('Resistance Magique'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Resistance Physique'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Resistance Psychique'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Ingeniosite'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
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
                      Text('Courage (COU)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Intelligence (INT)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Charisme (CHA)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Adresse (AD)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Force (FO)'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
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
      ),
    ),
  );
}
