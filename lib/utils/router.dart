import 'package:boilerplate/screens/home.dart';
import 'package:boilerplate/screens/not_found.dart';
import 'package:boilerplate/screens/settings.dart';
import 'package:boilerplate/utils/constans.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => Settings());
      default:
        return MaterialPageRoute(builder: (_) => NotFound());
    }
  }
}
