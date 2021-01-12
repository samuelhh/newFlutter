import 'package:flutter/material.dart';
import '../pages/MoreWidget.dart';
import '../pages/CartPage.dart';
import '../pages/MsgPage.dart';
import '../pages/PersonPage.dart';

class MainNav extends StatefulWidget {
  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  final _curColor = Colors.blue;
  final _normalColor = Colors.grey;

  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.grey),
      activeIcon: Icon(Icons.home, color: Colors.blue),
      label: "首页",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message, color: Colors.grey),
      activeIcon: Icon(Icons.message, color: Colors.blue),
      label: "消息",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart, color: Colors.grey),
      activeIcon: Icon(Icons.shopping_cart, color: Colors.blue),
      label: "购物车",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.grey),
      activeIcon: Icon(Icons.person, color: Colors.blue),
      label: "我的",
    ),
  ];

  int _currentIndex;

  final pages = [MoreWidget(), MsgPage(), CartPage(), PersonPage()];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _currentIndex,
        onTap: (index) {
          _changePage(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  //切换页面
  void _changePage(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
