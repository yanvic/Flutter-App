import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blueAccent,
        animationDuration: const Duration(microseconds: 500000),
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.accessibility_new, size: 30),
          Icon(Icons.add_chart_sharp, size: 30),
          Icon(Icons.account_circle_outlined, size: 30),
        ],
        onTap: (index) {},
      ),
    );
  }
}
