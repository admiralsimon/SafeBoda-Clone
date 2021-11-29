import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_boda_clone/constants.dart';
import 'package:safe_boda_clone/widgets/icon_button_widget.dart';
import 'package:safe_boda_clone/widgets/list_tile_widget.dart';

class MyAccountScreen extends StatelessWidget {
  static const myAccountScreen = "/my-account-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "My Account",
                  style: TextStyle(
                      color: kSafeBodaBlue,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey.shade400, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30.0,
                              child: ClipOval(
                                child: Image.asset("images/safe_b.png"),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Safe Boda",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: kSafeBodaBlue,
                                    ),
                                  ),
                                  Text("+256773383412"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButtonWidget(
                        onWidgetPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey.shade400, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5.0,
                child: Column(
                  children: [
                    ListTileWidget(
                      tileTitle: "Communications",
                      tileIcon: Icons.email,
                      onPressed: () {},
                    ),
                    Divider(
                      thickness: 1.0,
                      color: kSafeBodaGray,
                    ),
                    ListTileWidget(
                      tileTitle: "Payment methods",
                      tileIcon: Icons.payment_outlined,
                      onPressed: () {},
                    ),
                    Divider(
                      thickness: 1.0,
                      color: kSafeBodaGray,
                    ),
                    ListTileWidget(
                      tileTitle: "Help",
                      tileIcon: Icons.help_outline_sharp,
                      onPressed: () {},
                    ),
                    Divider(
                      thickness: 1.0,
                      color: kSafeBodaGray,
                    ),
                    ListTileWidget(
                      tileTitle: "About",
                      tileIcon: Icons.info_outline,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/safeboda_logo.png",
                        width: 40.0,
                        height: 40.0,
                      ),
                      Text(
                        "Safe Boda",
                        style: TextStyle(
                          color: kSafeBodaOrange,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Version 3.4.5",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
