import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  static const ordersScreen = "/orders-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Orders",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("LAST ORDERS"),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.motorcycle_sharp,
                    size: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ride"),
                      Text("29/05/2021"),
                      Text("Cash"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("10000"),
                      Text("UGX"),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
