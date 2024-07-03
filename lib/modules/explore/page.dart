/// Author:      星星
/// CreateTime:  2024/7/3
/// Contact Me:  1395723441@qq.com

import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('探索页'),
      ),
    );
  }
}

