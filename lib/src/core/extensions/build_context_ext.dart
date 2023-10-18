import 'package:flutter/material.dart';

extension BuildContextExtRoute on BuildContext {
  String? get currentName => ModalRoute.of(this)?.settings.name;

  bool isRouteNamed(String routeNamed) {
    return routeNamed == currentName;
  }

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  double get wDevice => MediaQuery.sizeOf(this).width;
  double get hDevice => MediaQuery.sizeOf(this).height;

  double get padBottom => MediaQuery.paddingOf(this).bottom;
  double get padTop => MediaQuery.paddingOf(this).top;
}
