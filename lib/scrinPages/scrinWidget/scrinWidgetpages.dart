import 'package:flutter/material.dart';

class ScrinWidgetPAges extends StatefulWidget {
  const ScrinWidgetPAges({super.key});

  @override
  State<ScrinWidgetPAges> createState() => _ScrinWidgetPAgesState();
}

class _ScrinWidgetPAgesState extends State<ScrinWidgetPAges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xFFF2F2F2),
                    child: Image(image: AssetImage("assets/images/Bitmap.jpg"),),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        "Scarf",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF424347)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "\$28",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Special Design',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFFBBBBBB),
                  ),
                )
              ],
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
