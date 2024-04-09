import 'package:flutter/material.dart';
import 'package:lilac/lilac.dart';

final appThemeProvider = StateNotifierProvider<AppThemeModeNotifier, ThemeMode>(
      (ref) {
    return AppThemeModeNotifier();
  },
);

class AppThemeModeNotifier extends StateNotifier<ThemeMode> {

  ThemeMode currentTheme = ThemeMode.light;

  AppThemeModeNotifier() : super(ThemeMode.light) {
    getCurrentTheme();
  }

  void toggleTheme() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    // storageService.set(APP_THEME_STORAGE_KEY, state.name);
  }

  void getCurrentTheme() async {
    // final theme = await storageService.get(APP_THEME_STORAGE_KEY);
    final value = ThemeMode.values.byName('${/*theme ?? */'light'}');
    state = value;
  }
}