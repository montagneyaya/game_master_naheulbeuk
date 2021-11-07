import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/base/app_bar_android.dart';
import 'package:game_master_naheulbeuk/src/ui/base/navigation.dart';

class BaseAndroid extends StatelessWidget {
  final Widget content;
  final BoxDecoration? backgroundContent;
  final bool needDrawer;
  final TabBar? bottomAndroid;
  final BottomNavigationBar? bottomNavigationBar;

  BaseAndroid(this.content, this.backgroundContent, this.needDrawer,
      this.bottomAndroid, this.bottomNavigationBar);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: needDrawer ? buildNavigation(context) : null,
      appBar: appBarAndroid(context, bottomAndroid),
      bottomNavigationBar: bottomNavigationBar,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: backgroundContent,
            child: this.content,
          ),
        ),
      ),
    );
  }
}
