import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_boda_clone/screens/home_screen.dart';
import 'package:safe_boda_clone/screens/my_account_screen.dart';
import 'package:safe_boda_clone/screens/orders_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _screens = [
    {"screen": OrdersScreen(), "title": "Orders"},
    {"screen": HomeScreen(), "title": "What do you need?"},
    {"screen": MyAccountScreen(), "title": "My Account"}
  ];

  int _selectedScreenIndex = 1;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]["screen"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        // unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            label: "Orders",
            icon: Icon(Icons.list_alt_rounded),
          ),
          BottomNavigationBarItem(
            label: "SafeBoda",
            icon: Icon(FontAwesomeIcons.motorcycle),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(FontAwesomeIcons.user),
          ),
        ],
      ),
    );
  }
}
