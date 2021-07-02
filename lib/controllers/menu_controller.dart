import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _globalKey;

  void controlMenu() {
    if (!_globalKey.currentState.isDrawerOpen) {
      _globalKey.currentState.openDrawer();
    }
  }
}
