import 'package:flutter/material.dart';
import '../pages/IndexPage.dart';
import '../pages/CartPage.dart';
import '../pages/MsgPage.dart';
import '../pages/PersonPage.dart';

class NavTabs extends StatefulWidget {
  @override
  _NavTabsState createState() => _NavTabsState();
}

class _NavTabsState extends State<NavTabs> {
  final PageController _controller = PageController(initialPage: 0);
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [IndexPage(), MsgPage(), CartPage(), PersonPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _defaultColor),
              activeIcon: Icon(Icons.home, color: _activeColor),
              label: "首页"),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: _defaultColor),
            activeIcon: Icon(Icons.message, color: _activeColor),
            label: "消息",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: _defaultColor),
            activeIcon: Icon(Icons.shopping_cart, color: _activeColor),
            label: "购物车",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _defaultColor),
            activeIcon: Icon(Icons.person, color: _activeColor),
            label: "我的",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          _changePage(index, _controller);
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  //切换页面
  void _changePage(int index, PageController controller) {
    if (index != _currentIndex) {
      controller.jumpToPage(index);
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
