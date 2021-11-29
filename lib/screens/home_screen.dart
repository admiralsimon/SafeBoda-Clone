import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_boda_clone/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: ,
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Stack(
            children: [
              Container(
                height: (MediaQuery.of(context).size.height / 2) * 0.90,
                color: Color(0xFFF9893E),
              ),
              Container(
                height: double.infinity,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text("What do you need?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w800)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              WhatDoYouNeedItem(
                                asset: Icon(Icons.bike_scooter),
                                text: "Order Ride",
                              ),
                              WhatDoYouNeedItem(
                                asset: Icon(Icons.bike_scooter),
                                text: "Order Ride",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              WhatDoYouNeedItem(
                                asset: Icon(Icons.bike_scooter),
                                text: "Order Ride",
                              ),
                              WhatDoYouNeedItem(
                                asset: Icon(Icons.bike_scooter),
                                text: "Order Ride",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SBServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class WhatDoYouNeedItem extends StatelessWidget {
  final Icon asset;
  final String text;

  const WhatDoYouNeedItem({
    required this.asset,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(right: 5.0, top: 5.0),
        child: Column(children: [
          Expanded(
            child: Container(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: asset,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Text(
              text,
              style: TextStyle(
                color: Color(0XFF174757),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
