import 'package:featured/scrinPages/scrin/Checkout.dart';
import 'package:flutter/material.dart';

class ShoppingCartPages extends StatefulWidget {
  const ShoppingCartPages({super.key});

  @override
  State<ShoppingCartPages> createState() => _ShoppingCartPagesState();
}

class _ShoppingCartPagesState extends State<ShoppingCartPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back_rounded,
                    size: 37,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Cart",
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF424347),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            child: Text(
                              "3 items",
                              style: TextStyle(color: Color(0xFFBBBBBBB)),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(
                                width: 2,
                              ),
                              Text("Select All",
                                  style: TextStyle(color: Color(0xFF3E3E3E))),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.delete,
                                size: 23,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Delete Selected",
                                style: TextStyle(color: Color(0xFF3E3E3E)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  buildRow(),
                  const SizedBox(
                    height: 28,
                  ),
                  buildRow(),
                  const SizedBox(
                    height: 28,
                  ),
                  buildRow(),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        double.maxFinite,
                        60,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Color(0xFF8688BC),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutPages()));
                    },
                    child: const Text(
                      "Check Out",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 105),
          child: Icon(
            Icons.check_box,
            color: Color(0xFF8688BC),
          ),
        ),
        Column(
          children: [
            const Text(
              "Metal Earrings",
              style: TextStyle(fontSize: 16, color: Color(0xFF424347)),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Special Design",
              style: TextStyle(fontSize: 14, color: Color(0xFFBBBBBB)),
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              children: [
                Text(
                  "\$12",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  "In stock",
                  style: TextStyle(fontSize: 14, color: Color(0xFF8688BC)),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Container(
                  width: 140,
                  height: 50,
                  color: const Color(0xFFF5F5F5),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.remove),
                        Text("1"),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.delete)
              ],
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        const Image(
          image: AssetImage("assets/images/Bitmap.jpg"),
        )
      ],
    );
  }
}
