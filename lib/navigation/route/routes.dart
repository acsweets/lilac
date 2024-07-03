import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lilac/lilac.dart';

import 'desk_route.dart';
import 'moblie_route.dart';

final RouteBase rootRoute = GoRoute(
  path: '/',
  redirect: _redirect,
  routes: [
    if (isDesk) deskRoute,
    if (!isDesk) ...mobileRoute
  ],

);

//重定向
FutureOr<String?> _redirect(BuildContext context, GoRouterState state) {
  if (state.fullPath == '/') {
    return '/color';
  }
  return null;
}

