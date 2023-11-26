import 'package:featured/scrinPages/scrin/proceed.dart';
import 'package:flutter/material.dart';

class CheckOutPages extends StatefulWidget {
  const CheckOutPages({super.key});

  @override
  State<CheckOutPages> createState() => _CheckOutPagesState();
}

class _CheckOutPagesState extends State<CheckOutPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        shadowColor: Colors.grey,
        toolbarHeight: 126,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Check out",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRow(),
            const SizedBox(
              height: 31,
            ),
            buildRow(),
            const SizedBox(
              height: 80,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping address",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF424347),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "202 Wayne St,\nDurand, MI, 48429",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF3E3E3E),
                      ),
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: Color(0xFF8688BC),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Change",
                  style: TextStyle(
                    color: Color(0xFF8688BC),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 79,
            ),
            const Text(
              "Payment",
              style: TextStyle(
                color: Color(
                  0xFF424347,
                ),
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB5B5B5),
                  fixedSize: const Size(
                    double.maxFinite,
                    60,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProceedPages(),
                  ),
                );
              },
              child: const Text(
                "Proceed",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Metal Earrings",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF424347),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Special Design",
              style: TextStyle(
                color: Color(0xFFBBBBBB),
              ),
            ),
            Row(
              children: [
                Text(
                  "\$12",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF424347),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  "In stock",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8688BC),
                  ),
                )
              ],
            ),
          ],
        ),
        Image(
          image: AssetImage("assets/images/Bitmap.jpg"),
          width: 120,
          height: 120,
        )
      ],
    );
  }
}
