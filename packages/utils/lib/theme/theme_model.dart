import 'package:flutter/material.dart';
import 'package:utils/theme/test_styles.dart';
import 'package:utils/theme/text_theme.dart';

import 'app_colors.dart';

class AppThemeModel {
  static ThemeData get base {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "黑体",
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(
            allowEnterRouteSnapshotting: false,
          ),
        },
      ),
      chipTheme: const ChipThemeData(
          side: BorderSide.none,
          backgroundColor: Color(0xfff3f4f6),
          labelStyle: TextStyle(fontSize: 12, color: Colors.grey),
          labelPadding: EdgeInsets.symmetric(horizontal: 12),
          padding: EdgeInsets.zero),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xfff2f2f2),
          titleTextStyle: TextStyle(fontFamily: "黑体", fontSize: 16, color: Colors.black)),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
        background: AppColors.black,
      ),
      // backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        titleTextStyle: AppTextStyles.h2,
      ),
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      textTheme: TextThemes.textTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
