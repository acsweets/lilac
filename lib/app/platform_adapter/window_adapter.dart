import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
class WindowsAdapter {

  static Future<void> setSize() async {
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      //仅对桌面端进行尺寸设置
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        size: Size(920,680),
        minimumSize: Size(920/2,690/2),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.setTitleBarStyle(TitleBarStyle.hidden,windowButtonVisibility: false);
        await windowManager.show();
        await windowManager.focus();
      });
    }
  }

}