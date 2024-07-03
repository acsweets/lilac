import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

double px = 1 / PlatformDispatcher.instance.views.first.devicePixelRatio;
bool isDesk = kIsWeb || Platform.isMacOS||Platform.isWindows||Platform.isLinux;