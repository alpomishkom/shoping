import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_pages.dart';

class ProceedPages extends StatefulWidget {
  const ProceedPages({super.key});

  @override
  State<ProceedPages> createState() => _ProceedPagesState();
}

class _ProceedPagesState extends State<ProceedPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_sharp),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Shipping address",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF424347),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Row(
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
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Change",
                    style: TextStyle(
                      color: Color(0xFF8688BC),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 79,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF424347),
                        ),
                      ),
                      Text("+ Add New Card"),
                    ],
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  buildSizedBox(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 66,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF3E3E3E),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF3E3E3E),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Summary",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "28.00\$",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF3E3E3E),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "7.20\$",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF3E3E3E),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "35.20\$",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8688BC),
                        fixedSize: const Size(
                          double.maxFinite,
                          56,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: CupertinoColors.white,
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.add),
                              const SizedBox(
                                height: 24,
                              ),
                              const Text(
                                "Add New Card",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF424347),
                                ),
                              ),
                              const SizedBox(
                                height: 23,
                              ),
                              const Text(
                                "Name on card",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black38),
                              ),
                              const Text(
                                "Aycan Doganlar",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black38),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              const Text(
                                "Card number",
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 12),
                              ),
                              const Text(
                                "1234  4567  7890  1234",
                                style: TextStyle(color: Colors.black87),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              const Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Expiry date",
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 9,
                                      ),
                                      Text(
                                        "02/24",
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CVV",
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Icon(Icons.more_horiz),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 55,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF8688BC),
                                    fixedSize: const Size(double.maxFinite, 56),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OrderPages(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Add Card",
                                  style:
                                      TextStyle(color: CupertinoColors.white),
                                ),
                              )
                            ],
                          ),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                    child: const Text(
                      "Pay Now",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  SizedBox buildSizedBox() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TweenAnimationBuilder(
            tween: Tween(end: 1.0, begin: 0.0),
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            builder: (context, value, child) {
              return Transform.scale(
                scaleX: value,
                scaleY: value,
                child: Row(
                  children: [
                    Container(
                      width: 382, // Set a specific width
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEB7777),
                        borderRadius: BorderRadius.circular(12.985),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Column(
                            children: [
                              cardWidget(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 382, // Set a specific width
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8688BC),
                        borderRadius: BorderRadius.circular(12.985),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Column(
                            children: [
                              cardWidget(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 382, // Set a specific width
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFF7AA0DA),
                        borderRadius: BorderRadius.circular(12.985),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Column(
                            children: [
                              cardWidget(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget cardWidget() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "VISA",
          style: TextStyle(
            fontSize: 26,
            color: CupertinoColors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "••••",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "••••",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "••••",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "3282",
              style: TextStyle(color: CupertinoColors.white),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card Holder",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                Text(
                  "Aycan Doganlar",
                  style: TextStyle(fontSize: 15, color: CupertinoColors.white),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expires",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                Text(
                  "12/23",
                  style: TextStyle(fontSize: 15, color: CupertinoColors.white),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
