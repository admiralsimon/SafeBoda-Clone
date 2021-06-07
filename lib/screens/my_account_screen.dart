import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  static const myAccountScreen = "/my-account-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My Account"),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Text("MY Account"),
          ],
        ),
      ),
    );
  }
}
