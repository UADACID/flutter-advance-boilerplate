import 'package:boilerplate/utils/constans.dart';
import 'package:boilerplate/utils/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: (RouteSettings setting) => Router.generateRoute(setting),
    );
  }
}
