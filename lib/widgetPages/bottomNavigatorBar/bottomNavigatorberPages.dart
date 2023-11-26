import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../scrinPages/scrin/scrin_pages.dart';
import '../../scrinPages/scrin/shopping_cart.dart';

class BottomNavigatorBarPages extends StatefulWidget {
  const BottomNavigatorBarPages({super.key});

  @override
  State<BottomNavigatorBarPages> createState() =>
      _BottomNavigatorBarPagesState();
}

class _BottomNavigatorBarPagesState extends State<BottomNavigatorBarPages> {
  int _index = 0;

  void onTap(int value) {
    setState(() {
      _index = value;
    });
  }
  List<Widget> _listWidget = <Widget>[
    ScrinPages(),
    ScrinPages(),
    ShoppingCartPages(),
    ScrinPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: ""
          ),
        ],
        currentIndex: _index,
        onTap: onTap,
        unselectedItemColor: Color(0xFFBBBBBB),
        fixedColor: Colors.black87,
      ),
    );
  }
}
