/// Author:      星星
/// CreateTime:  2024/7/3
/// Contact Me:  1395723441@qq.com

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: Column(children: [
        Container(
          height: 200,
          child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // 每行4个项目
              crossAxisSpacing: 10, // 横向间距
              mainAxisSpacing: 10, // 纵向间距
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: (){
                    context.go('/home/eat');
                  },
                  child: Container(
                    height: 30,
                    color: Colors.deepPurpleAccent,
                    child: Text("吃啥"),));
            },
          ),
        ),
      ]),
    );
  }
}
