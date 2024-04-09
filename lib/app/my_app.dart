import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lilac/lilac.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[rootRoute],
  onException: (BuildContext ctx, GoRouterState state, GoRouter router) {
    router.go('/404', extra: state.uri.toString());
  },
  // errorBuilder: (_,state) {
  //   return EmptyPage(msg: '无法访问: ${state.matchedLocation}',);
  // }
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);

    return MaterialApp.router(
      routerConfig: router,
      theme: AppThemeModel.lightTheme,
      darkTheme: AppThemeModel.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,

    );
  }
}

final RouteBase rootRoute = GoRoute(
  path: '/',
  redirect: _redirect,
  routes: [
    // appRoute,
    GoRoute(
      path: 'login',
      builder: (BuildContext context, GoRouterState state) {
        return Container();
      },
    ),
  ],
);
//重定向

FutureOr<String?> _redirect(BuildContext context, GoRouterState state) {
  if (state.fullPath == '/') {
    return '/color';
  }
  return null;
}

/// todo ShellRoute
// final RouteBase appRoute = ShellRoute(
//   builder: (BuildContext context, GoRouterState state, Widget child) {
//     return AppNavigation(navigator: child);
//   },
//   routes: <RouteBase>[
//     colorRouters,
//     GoRoute(
//         path: 'counter',
//         builder: (BuildContext context, GoRouterState state) {
//           return const CounterPage();
//         }),
//     sortRouters,
//     GoRoute(
//       path: 'user',
//       builder: (BuildContext context, GoRouterState state) {
//         return const UserPage();
//       },
//     ),
//     GoRoute(
//       path: 'settings',
//       builder: (BuildContext context, GoRouterState state) {
//         return const SettingPage();
//       },
//     ),
//     GoRoute(
//       path: '404',
//       builder: (BuildContext context, GoRouterState state) {
//         String msg = '无法访问: ${state.extra}';
//         return EmptyPanel(msg: msg);
//       },
//     )
//   ],
// );
