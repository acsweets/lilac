/// Author:      星星
/// CreateTime:  2024/7/3
/// Contact Me:  1395723441@qq.com

import 'package:flutter/material.dart';

class TreasurePage extends StatefulWidget {
  const TreasurePage({super.key});

  @override
  State<TreasurePage> createState() => _TreasurePageState();
}

class _TreasurePageState extends State<TreasurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("百宝页"),
      ),
    );
  }
}
