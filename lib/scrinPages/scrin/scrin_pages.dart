import 'package:flutter/material.dart';

import '../scrinWidget/scrinWidgetpages.dart';

class ScrinPages extends StatefulWidget {
  const ScrinPages({super.key});

  @override
  State<ScrinPages> createState() => _ScrinPagesState();
}

class _ScrinPagesState extends State<ScrinPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Featured",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF8688BC),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "18 items listed",
              style: TextStyle(color: Color(0xFFBBBBBB), fontSize: 13),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 60),
            child: Row(
              children: [
                Icon(
                  Icons.compare_arrows_sharp,
                  size: 20,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Sort",
                  style: TextStyle(
                    color: Color(0xFF3E3E3E),
                    fontSize: 13,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.filter_list_alt,
                  size: 23,
                  color: Color(0xFF3E3E3E),
                ),
                Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF3E3E3E),
                  ),
                ),
              ],
            ),
          )
        ],
        toolbarHeight: 150,
      ),
      body: ScrinWidgetPAges(),
    );
  }
}
