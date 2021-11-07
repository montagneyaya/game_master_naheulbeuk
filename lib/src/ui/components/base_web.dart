import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/responsive/breakpoint.dart';
import 'package:game_master_naheulbeuk/src/ui/responsive/device.dart';
import 'package:game_master_naheulbeuk/src/ui/components/app_bar_web.dart';
import 'package:game_master_naheulbeuk/src/ui/components/navigation.dart';

class BaseWeb extends StatelessWidget {
  final Widget content;
  final BoxDecoration backgroundContent;

  BaseWeb(this.content, this.backgroundContent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: buildNavigation(context),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: backgroundContent,
          child: Column(
            children: <Widget>[
              Image(image: _imageHeader(context)),
              appBarWeb(context),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: this.content,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _imageHeader(context) {
    final Device device = Device();
    final Breakpoint breakpoint = Breakpoint();
    if (device.device(context) == Devices.web) {
      switch (breakpoint.breakpoint(context)) {
        case Breakpoints.xsmall:
          return AssetImage('assets/images/web/banner-xs.webp');
        case Breakpoints.small:
          return AssetImage('assets/images/web/banner-s.webp');
        case Breakpoints.medium:
          return AssetImage('assets/images/web/banner-m.webp');
        case Breakpoints.large:
          return AssetImage('assets/images/web/banner-l.webp');
        case Breakpoints.xlarge:
          return AssetImage('assets/images/web/banner-xl.webp');
      }
    }
  }
}
