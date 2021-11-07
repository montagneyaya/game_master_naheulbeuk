part of 'package:game_master_naheulbeuk/src/ui/pages/home_android.dart';

Widget _mainHomeTab(context) {
  return Container(
    decoration: backgroundMain,
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
                  flex: 6,
                  child: Center(
                    child: Container(
                      width: 160,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlueGrey600),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Text('Nom'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Genre'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Origine'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Metier'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: textField(context),
                ),
                Expanded(
                  child: textField(context),
                ),
                Expanded(
                  child: textField(context),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('Signes Particuliers'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: textField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: textField(context),
                ),
                Expanded(
                  child: textField(context),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
