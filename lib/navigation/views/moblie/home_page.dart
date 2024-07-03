import 'package:flutter/material.dart';

import '../../../modules/explore/page.dart';
import '../../../modules/me/page.dart';
import '../../../modules/treasure/page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  int position = 0;

  @override
  void dispose() {
    _controller.dispose(); //释放控制器
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // endDrawer: const HomeRightDrawer(),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        children: [
          ExplorePage(),
          TreasurePage(),
          MePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: position,
        onTap: (index) {
          position = index;
          _controller.jumpToPage(index);
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.account_balance),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.account_circle_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.adb_rounded),
          ),
        ],
      ),
    );
  }
}
