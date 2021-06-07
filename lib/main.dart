import 'package:flutter/material.dart';
import 'package:safe_boda_clone/screens/home_screen.dart';
import 'package:safe_boda_clone/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SafeBoda',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: TabsScreen());
  }
}
