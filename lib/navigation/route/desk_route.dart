import 'package:flutter/material.dart';
import 'package:lilac/lilac.dart';

///
final RouteBase deskRoute = ShellRoute(
  builder: (BuildContext context, GoRouterState state, Widget child) {
    // return AppNavigation(navigator: child);
    return Scaffold(
        appBar: AppBar(
          title: Text("desk"),
        ),
        body: Container());
  },
  routes: <RouteBase>[],
);
