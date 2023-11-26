import 'package:flutter/material.dart';

class OrderPages extends StatefulWidget {
  const OrderPages({super.key});

  @override
  State<OrderPages> createState() => _OrderPagesState();
}

class _OrderPagesState extends State<OrderPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage("assets/images/confetti.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Text(
                    'Order completed!',
                    style: TextStyle(
                      color: Color(0xFF9FC78A),
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'Order number: #9876543!',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 85,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ordered Items"),
                  Icon(Icons.add),
                ],
              ),
              const SizedBox(
                height: 39,
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
              SizedBox(
                height: 55,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8688BC),
                  fixedSize: Size(double.maxFinite, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Continue Shopping",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFFFFF),
                  fixedSize: Size(double.maxFinite, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Continue Shopping",
                  style: TextStyle(color: Colors.black87),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
