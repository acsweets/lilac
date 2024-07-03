import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lilac/lilac.dart';

import '../navigation/route/routes.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[rootRoute],
  onException: (BuildContext ctx, GoRouterState state, GoRouter router) {
    router.go('/404', extra: state.uri.toString());
  },
  // errorBuilder: (_,state) {
  //   return EmptyPage(msg: '无法访问: ${state.matchedLocation}',);
  // }
);

class StarFun extends ConsumerWidget {
  const StarFun({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);
    return MaterialApp.router(
      routerConfig: _router,
      theme: AppThemeModel.lightTheme,
      darkTheme: AppThemeModel.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
    );
  }
}

