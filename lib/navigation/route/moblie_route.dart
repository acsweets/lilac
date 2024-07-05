import 'package:flutter/material.dart';
import 'package:lilac/lilac.dart';

import '../../modules/eat_nothing/page.dart';
import '../views/moblie/home_page.dart';

final List<RouteBase> mobileRoute = [
  GoRoute(
      path: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage ();
      },
      routes: [
        GoRoute(
            path: 'eat',
            builder: (BuildContext context, GoRouterState state) {
              return EatPage ();
            },
            routes: [


            ]),
      ]),
];
