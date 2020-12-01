import 'package:flutter/material.dart';
import './IndexPage.dart';
import './CartPage.dart';
import './MsgPage.dart';
import './PersonPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.grey),
      activeIcon: Icon(Icons.home, color: Colors.blue),
      title: Text("首页"),
    
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message, color: Colors.grey),
      activeIcon: Icon(Icons.message, color: Colors.blue),
      title: Text("消息"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart, color: Colors.grey),
      activeIcon: Icon(Icons.shopping_cart, color: Colors.blue),
      title: Text("购物车"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.grey),
      activeIcon: Icon(Icons.person, color: Colors.blue),
      title: Text("我的"),
    ),
  ];

  int _currentIndex;

  final pages = [IndexPage(), MsgPage(), CartPage(), PersonPage()];

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
