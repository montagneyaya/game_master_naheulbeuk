import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/app_bar/app_bar_android.dart';
import 'package:game_master_naheulbeuk/src/ui/components/drawer/drawer.dart';

class BaseAndroid extends StatelessWidget {
  final Widget content;
  final BoxDecoration? backgroundContent;
  final bool needDrawer;
  final TabBar? bottomAndroid;
  final BottomNavigationBar? bottomNavigationBar;

  BaseAndroid(this.content, this.backgroundContent, this.needDrawer, this.bottomAndroid, this.bottomNavigationBar);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: needDrawer ? buildNavigation(context) : null,
      appBar: appBarAndroid(context, bottomAndroid),
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
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
